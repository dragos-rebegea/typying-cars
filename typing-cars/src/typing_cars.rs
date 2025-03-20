#![no_std]

multiversx_sc::imports!();
multiversx_sc::derive_imports!();

// Player Profile Structure
#[type_abi]
#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, ManagedVecItem, Clone)]
pub struct PlayerProfile<M: ManagedTypeApi> {
    pub address: ManagedAddress<M>,
    pub username: ManagedBuffer<M>,
    pub avatar_id: u32,
    pub rating: u32,
    pub total_races: u64,
    pub wins: u64,
    pub average_wpm: u32,
    pub highest_wpm: u32,
    pub registration_timestamp: u64,
    pub last_active: u64,
}

// Race Result Structure
#[type_abi]
#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, ManagedVecItem, Clone)]
pub struct RaceResult<M: ManagedTypeApi> {
    pub player: ManagedAddress<M>,
    pub wpm: u32,
    pub accuracy: u32, // Percentage * 100 for precision
    pub completion_time: u64,
    pub position: u8,
    pub reward_amount: EgldOrEsdtTokenPayment<M>,
    pub verified: bool,
    pub crypto_proof: ManagedBuffer<M>,
}

// Race Details Structure
#[type_abi]
#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode)]
pub struct RaceDetails<M: ManagedTypeApi> {
    pub race_id: u64,
    pub created_by: ManagedAddress<M>,
    pub entry_fee: EgldOrEsdtTokenPayment<M>,
    pub max_participants: u32,
    pub participants: ManagedVec<M, ManagedAddress<M>>,
    pub status: RaceStatus,
    pub difficulty: u8,
    pub text_id: u32, // References text to type
    pub start_timestamp: u64,
    pub end_timestamp: u64,
    pub results: ManagedVec<M, RaceResult<M>>,
}

// Race Status Enum
#[type_abi]
#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, PartialEq, Eq, Clone, Copy)]
pub enum RaceStatus {
    Registration,
    Active,
    Completed,
    Cancelled,
}

/// An empty contract. To be used as a template when starting a new contract from scratch.
#[multiversx_sc::contract]
pub trait TypingCars {
    // ===================================================================================
    // Constructor
    // ===================================================================================
    
    #[init]
    fn init(&self) {
        self.total_players().set(0);
        self.total_races().set(0);
    }

    // ===================================================================================
    // Player Management Functions
    // ===================================================================================
    
    #[endpoint]
    #[payable("EGLD")]
    fn register_player(&self, username: ManagedBuffer, avatar_id: u32) {
        let caller = self.blockchain().get_caller();
        
        // Check if player already exists in the user mapper
        let user_id = self.user_mapper().get_user_id(&caller);
        require!(user_id == 0, "Player already registered");
        require!(username.len() > 0, "Username cannot be empty");
        
        let current_timestamp = self.blockchain().get_block_timestamp();
        
        let player_profile = PlayerProfile {
            address: caller.clone(),
            username,
            avatar_id,
            rating: 1000, // Default rating
            total_races: 0,
            wins: 0,
            average_wpm: 0,
            highest_wpm: 0,
            registration_timestamp: current_timestamp,
            last_active: current_timestamp,
        };
        
        // Create the user in the user mapper
        self.user_mapper().get_or_create_user(&caller);
        
        // Store player profile
        self.player_profiles(&caller).set(player_profile);
        
        let mut total = self.total_players().get();
        total += 1;
        self.total_players().set(total);
    }
    
    #[endpoint]
    fn update_profile(&self, username: ManagedBuffer, avatar_id: u32) {
        let caller = self.blockchain().get_caller();
        
        require!(self.player_exists(&caller), "Player not registered");
        require!(username.len() > 0, "Username cannot be empty");
        
        let mut player_profile = self.player_profiles(&caller).get();
        player_profile.username = username;
        player_profile.avatar_id = avatar_id;
        player_profile.last_active = self.blockchain().get_block_timestamp();
        
        self.player_profiles(&caller).set(player_profile);
    }

    // ===================================================================================
    // Views
    // ===================================================================================
    
    #[view(getPlayerProfile)]
    fn get_player_profile(&self, address: ManagedAddress) -> PlayerProfile<Self::Api> {
        require!(self.player_exists(&address), "Player not registered");
        self.player_profiles(&address).get()
    }
    
    #[view(getTotalPlayers)]
    fn get_total_players(&self) -> u64 {
        self.total_players().get()
    }

    // ===================================================================================
    // Race Management Functions
    // ===================================================================================
    
    #[endpoint(createRace)]
    #[payable("EGLD")]
    fn create_race(
        &self, 
        max_participants: u32, 
        difficulty: u8,
        text_id: u32
    ) -> u64 {
        let caller = self.blockchain().get_caller();
        
        require!(self.player_exists(&caller), "Player not registered");
        require!(max_participants >= 2 && max_participants <= 10, "Invalid number of participants");
        require!(difficulty >= 1 && difficulty <= 5, "Difficulty must be between 1 and 5");
        
        let payment = self.call_value().egld_or_single_esdt();
        
        let race_id = self.total_races().get() + 1;
        
        let race_details = RaceDetails {
            race_id,
            created_by: caller,
            entry_fee: payment.clone(),
            max_participants,
            participants: ManagedVec::new(),
            status: RaceStatus::Registration,
            difficulty,
            text_id,
            start_timestamp: 0, // Will be set when race starts
            end_timestamp: 0,   // Will be set when race ends
            results: ManagedVec::new(),
        };
        
        self.races(&race_id).set(race_details);
        self.total_races().set(race_id);
        
        race_id
    }
    
    #[endpoint(joinRace)]
    #[payable("EGLD")]
    fn join_race(&self, race_id: u64) {
        let caller = self.blockchain().get_caller();
        
        require!(self.player_exists(&caller), "Player not registered");
        require!(self.races(&race_id).is_empty() == false, "Race does not exist");
        
        let mut race = self.races(&race_id).get();
        
        require!(race.status == RaceStatus::Registration, "Race is not in registration phase");
        
        let entry_payment = self.call_value().egld_or_single_esdt();
        require!(
            entry_payment.token_identifier == race.entry_fee.token_identifier &&
            entry_payment.token_nonce == race.entry_fee.token_nonce &&
            entry_payment.amount == race.entry_fee.amount,
            "Incorrect entry fee"
        );
        
        // Check if player is already registered
        let caller_address = caller.clone();
        let mut already_registered = false;
        for p_index in 0..race.participants.len() {
            if race.participants.get(p_index).clone() == caller_address {
                already_registered = true;
                break;
            }
        }
        require!(!already_registered, "Player already registered for this race");
        
        // Check if race is full
        require!(
            race.participants.len() < race.max_participants.try_into().unwrap(),
            "Race is full"
        );
        
        race.participants.push(caller);
        
        // If race is now full, change status to Active and set start timestamp
        if race.participants.len() == race.max_participants.try_into().unwrap() {
            race.status = RaceStatus::Active;
            race.start_timestamp = self.blockchain().get_block_timestamp();
        }
        
        self.races(&race_id).set(race);
    }
    
    #[endpoint(submitResult)]
    fn submit_result(
        &self,
        race_id: u64,
        wpm: u32,
        accuracy: u32,
        completion_time: u64,
        crypto_proof: ManagedBuffer
    ) {
        let caller = self.blockchain().get_caller();
        
        require!(self.player_exists(&caller), "Player not registered");
        require!(self.races(&race_id).is_empty() == false, "Race does not exist");
        
        let mut race = self.races(&race_id).get();
        
        require!(race.status == RaceStatus::Active, "Race is not active");
        
        // Check if player is participating in this race
        let caller_address = caller.clone();
        let mut is_participant = false;
        for p_index in 0..race.participants.len() {
            if race.participants.get(p_index).clone() == caller_address {
                is_participant = true;
                break;
            }
        }
        require!(is_participant, "Player not participating in this race");
        
        // Check if player has already submitted a result
        let mut already_submitted = false;
        for r_index in 0..race.results.len() {
            if race.results.get(r_index).player == caller_address {
                already_submitted = true;
                break;
            }
        }
        require!(!already_submitted, "Result already submitted");
        
        // Basic validation of the result
        require!(accuracy <= 10000, "Accuracy cannot be greater than 100%");
        
        // Verify the result (in a real implementation, this would include cryptographic verification)
        // For now, we simply mark it as verified
        let verified = true;
        
        // Calculate position (this is a simple implementation, in a real contract we'd sort by WPM)
        let position = race.results.len() as u8 + 1;
        
        // Create result with zero EGLD reward initially
        let egld_token_id = EgldOrEsdtTokenIdentifier::egld();
        
        let result = RaceResult {
            player: caller.clone(),
            wpm,
            accuracy,
            completion_time,
            position,
            reward_amount: EgldOrEsdtTokenPayment::new(
                egld_token_id,
                0,
                BigUint::zero()
            ),
            verified,
            crypto_proof,
        };
        
        race.results.push(result);
        
        // Update player stats
        let mut player_profile = self.player_profiles(&caller).get();
        player_profile.total_races += 1;
        
        if wpm > player_profile.highest_wpm {
            player_profile.highest_wpm = wpm;
        }
        
        // Update average WPM
        let total_wpm = player_profile.average_wpm as u64 * (player_profile.total_races - 1) + wpm as u64;
        player_profile.average_wpm = (total_wpm / player_profile.total_races) as u32;
        
        self.player_profiles(&caller).set(player_profile);
        
        // If everyone has submitted a result, finalize the race
        if race.results.len() == race.participants.len() {
            race.status = RaceStatus::Completed;
            race.end_timestamp = self.blockchain().get_block_timestamp();
            
            // Here we would distribute rewards, but that's omitted for simplicity
        }
        
        self.races(&race_id).set(race);
    }
    
    #[endpoint(finalizeRace)]
    fn finalize_race(&self, race_id: u64) {
        let caller = self.blockchain().get_caller();
        
        require!(self.races(&race_id).is_empty() == false, "Race does not exist");
        
        let mut race = self.races(&race_id).get();
        
        require!(race.status == RaceStatus::Active, "Race is not active");
        
        // Only the creator can finalize the race
        require!(race.created_by == caller, "Only race creator can finalize");
        
        // Check if race has been active for too long (30 minutes)
        let current_timestamp = self.blockchain().get_block_timestamp();
        let race_duration = current_timestamp - race.start_timestamp;
        require!(race_duration > 1800, "Race can only be finalized after 30 minutes");
        
        race.status = RaceStatus::Completed;
        race.end_timestamp = current_timestamp;
        
        self.races(&race_id).set(race);
    }
    
    #[endpoint(cancelRace)]
    fn cancel_race(&self, race_id: u64) {
        let caller = self.blockchain().get_caller();
        
        require!(self.races(&race_id).is_empty() == false, "Race does not exist");
        
        let mut race = self.races(&race_id).get();
        
        require!(race.status == RaceStatus::Registration, "Race can only be cancelled during registration");
        
        // Only the creator can cancel the race
        require!(race.created_by == caller, "Only race creator can cancel");
        
        race.status = RaceStatus::Cancelled;
        
        // Refund entry fees to participants
        for participant in race.participants.iter() {
            self.send().direct_egld(
                &participant,
                &race.entry_fee.amount
            );
        }
        
        self.races(&race_id).set(race);
    }
    
    // ===================================================================================
    // Race Views
    // ===================================================================================
    
    #[view(getRaceDetails)]
    fn get_race_details(&self, race_id: u64) -> RaceDetails<Self::Api> {
        require!(self.races(&race_id).is_empty() == false, "Race does not exist");
        self.races(&race_id).get()
    }
    
    #[view(getRaceResults)]
    fn get_race_results(&self, race_id: u64) -> ManagedVec<RaceResult<Self::Api>> {
        require!(self.races(&race_id).is_empty() == false, "Race does not exist");
        self.races(&race_id).get().results
    }
    
    #[view(getTotalRaces)]
    fn get_total_races(&self) -> u64 {
        self.total_races().get()
    }

    // ===================================================================================
    // Helper Functions
    // ===================================================================================
    
    fn player_exists(&self, address: &ManagedAddress) -> bool {
        self.player_profiles(address).is_empty() == false
    }

    // ===================================================================================
    // Storage
    // ===================================================================================
    
    #[storage_mapper("playerProfiles")]
    fn player_profiles(&self, address: &ManagedAddress) -> SingleValueMapper<PlayerProfile<Self::Api>>;
    
    #[storage_mapper("totalPlayers")]
    fn total_players(&self) -> SingleValueMapper<u64>;
    
    #[storage_mapper("totalRaces")]
    fn total_races(&self) -> SingleValueMapper<u64>;
    
    #[storage_mapper("races")]
    fn races(&self, race_id: &u64) -> SingleValueMapper<RaceDetails<Self::Api>>;
    
    #[storage_mapper("user")]
    fn user_mapper(&self) -> UserMapper;

    // ===================================================================================
    // Upgrade
    // ===================================================================================
    
    #[upgrade]
    fn upgrade(&self) {
        // Initialization code on upgrade if needed
    }
}
