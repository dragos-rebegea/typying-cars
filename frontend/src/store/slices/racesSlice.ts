import { createSlice, PayloadAction } from '@reduxjs/toolkit';
import { Race, RaceParticipant } from '../../types';

interface RacesState {
  races: Race[];
  currentRace: Race | null;
  isLoading: boolean;
  error: string | null;
}

const initialState: RacesState = {
  races: [],
  currentRace: null,
  isLoading: false,
  error: null
};

export const racesSlice = createSlice({
  name: 'races',
  initialState,
  reducers: {
    fetchRacesStart: (state) => {
      state.isLoading = true;
      state.error = null;
    },
    fetchRacesSuccess: (state, action: PayloadAction<Race[]>) => {
      state.races = action.payload;
      state.isLoading = false;
    },
    fetchRacesFailure: (state, action: PayloadAction<string>) => {
      state.isLoading = false;
      state.error = action.payload;
    },
    createRaceStart: (state) => {
      state.isLoading = true;
      state.error = null;
    },
    createRaceSuccess: (state, action: PayloadAction<Race>) => {
      state.races = [action.payload, ...state.races];
      state.currentRace = action.payload;
      state.isLoading = false;
    },
    createRaceFailure: (state, action: PayloadAction<string>) => {
      state.isLoading = false;
      state.error = action.payload;
    },
    joinRaceStart: (state) => {
      state.isLoading = true;
      state.error = null;
    },
    joinRaceSuccess: (state, action: PayloadAction<Race>) => {
      state.races = state.races.map(race => 
        race.id === action.payload.id ? action.payload : race
      );
      state.currentRace = action.payload;
      state.isLoading = false;
    },
    joinRaceFailure: (state, action: PayloadAction<string>) => {
      state.isLoading = false;
      state.error = action.payload;
    },
    setCurrentRace: (state, action: PayloadAction<Race>) => {
      state.currentRace = action.payload;
    },
    updateRaceProgress: (state, action: PayloadAction<{ raceId: string, participant: RaceParticipant }>) => {
      const { raceId, participant } = action.payload;
      
      // Update races list
      state.races = state.races.map(race => {
        if (race.id === raceId) {
          const updatedParticipants = race.participants.map(p => 
            p.address === participant.address ? participant : p
          );
          
          return {
            ...race,
            participants: updatedParticipants
          };
        }
        return race;
      });
      
      // Update current race if it's the active one
      if (state.currentRace && state.currentRace.id === raceId) {
        const updatedParticipants = state.currentRace.participants.map(p => 
          p.address === participant.address ? participant : p
        );
        
        state.currentRace = {
          ...state.currentRace,
          participants: updatedParticipants
        };
      }
    },
    completeRace: (state, action: PayloadAction<{ raceId: string, results: RaceParticipant[] }>) => {
      const { raceId, results } = action.payload;
      
      // Update races list
      state.races = state.races.map(race => {
        if (race.id === raceId) {
          return {
            ...race,
            status: 'completed',
            completedAt: Date.now(),
            participants: results
          };
        }
        return race;
      });
      
      // Update current race if it's the active one
      if (state.currentRace && state.currentRace.id === raceId) {
        state.currentRace = {
          ...state.currentRace,
          status: 'completed',
          completedAt: Date.now(),
          participants: results
        };
      }
    },
    cancelRace: (state, action: PayloadAction<string>) => {
      // Remove the race from the list
      state.races = state.races.filter(race => race.id !== action.payload);
      
      // Clear current race if it's the canceled one
      if (state.currentRace && state.currentRace.id === action.payload) {
        state.currentRace = null;
      }
    },
    clearRaceError: (state) => {
      state.error = null;
    }
  }
});

export const {
  fetchRacesStart,
  fetchRacesSuccess,
  fetchRacesFailure,
  createRaceStart,
  createRaceSuccess,
  createRaceFailure,
  joinRaceStart,
  joinRaceSuccess,
  joinRaceFailure,
  setCurrentRace,
  updateRaceProgress,
  completeRace,
  cancelRace,
  clearRaceError
} = racesSlice.actions;

export default racesSlice.reducer; 