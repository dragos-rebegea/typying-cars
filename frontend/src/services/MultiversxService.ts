import { sendTransactions } from '@multiversx/sdk-dapp/services';
import { refreshAccount } from '@multiversx/sdk-dapp/utils';
import { multiversxConfig } from '../config/multiversx';
import { Race, RaceResult } from '../types';

export class MultiversxService {
  private readonly contractAddress: string;

  constructor() {
    this.contractAddress = multiversxConfig.typingCarsContractAddress;
  }

  /**
   * Create a new typing race
   * @param entryFee Entry fee in EGLD (string, e.g. "0.1")
   * @param maxParticipants Maximum number of participants
   * @param textId Text ID to use for the race
   * @param difficulty Difficulty level
   * @returns Transaction hash
   */
  async createRace(
    entryFee: string,
    maxParticipants: number,
    textId: number,
    difficulty: number
  ): Promise<string> {
    await refreshAccount();

    // For now, we'll use a simplified approach with stringified data
    const args = [
      entryFee,
      maxParticipants.toString(),
      textId.toString(),
      difficulty.toString()
    ];
    
    const data = `createRace@${args.join('@')}`;

    const tx = {
      value: this.parseEgldAmount(entryFee),
      data: data,
      receiver: this.contractAddress,
      gasLimit: 50000000,
    };

    const { sessionId } = await sendTransactions({
      transactions: tx,
      transactionsDisplayInfo: {
        processingMessage: 'Creating race...',
        errorMessage: 'Race creation failed',
        successMessage: 'Race created successfully',
      },
    });

    return sessionId;
  }

  /**
   * Join an existing race
   * @param raceId Race ID to join
   * @param entryFee Entry fee in EGLD (string, e.g. "0.1")
   * @returns Transaction hash
   */
  async joinRace(raceId: number, entryFee: string): Promise<string> {
    await refreshAccount();

    const data = `joinRace@${raceId}`;

    const tx = {
      value: this.parseEgldAmount(entryFee),
      data: data,
      receiver: this.contractAddress,
      gasLimit: 50000000,
    };

    const { sessionId } = await sendTransactions({
      transactions: tx,
      transactionsDisplayInfo: {
        processingMessage: 'Joining race...',
        errorMessage: 'Failed to join race',
        successMessage: 'Joined race successfully',
      },
    });

    return sessionId;
  }

  /**
   * Submit race results to the blockchain
   * @param raceId Race ID
   * @param wpm Words per minute result
   * @param accuracy Typing accuracy (0-100)
   * @param timeTaken Time taken in seconds
   * @param proof Cryptographic proof of authenticity
   * @returns Transaction hash
   */
  async submitRaceResult(
    raceId: number,
    wpm: number,
    accuracy: number,
    timeTaken: number,
    proof: string
  ): Promise<string> {
    await refreshAccount();

    const args = [
      raceId.toString(),
      wpm.toString(),
      accuracy.toString(),
      timeTaken.toString(),
      proof
    ];
    
    const data = `submitResult@${args.join('@')}`;

    const tx = {
      value: '0',
      data: data,
      receiver: this.contractAddress,
      gasLimit: 50000000,
    };

    const { sessionId } = await sendTransactions({
      transactions: tx,
      transactionsDisplayInfo: {
        processingMessage: 'Submitting race results...',
        errorMessage: 'Failed to submit results',
        successMessage: 'Results submitted successfully',
      },
    });

    return sessionId;
  }

  /**
   * Claim rewards for a completed race
   * @param raceId Race ID
   * @returns Transaction hash
   */
  async claimRewards(raceId: number): Promise<string> {
    await refreshAccount();

    const data = `claimRewards@${raceId}`;

    const tx = {
      value: '0',
      data: data,
      receiver: this.contractAddress,
      gasLimit: 50000000,
    };

    const { sessionId } = await sendTransactions({
      transactions: tx,
      transactionsDisplayInfo: {
        processingMessage: 'Claiming rewards...',
        errorMessage: 'Failed to claim rewards',
        successMessage: 'Rewards claimed successfully',
      },
    });

    return sessionId;
  }

  /**
   * Get available races from the smart contract
   * @returns Promise with array of races
   */
  async getAvailableRaces(): Promise<Race[]> {
    // This would be implemented with the actual backend API or contract query
    // For now, we return a mock response
    return [
      {
        id: '1',
        title: 'Speed Demons',
        description: 'Fast typing race for pros',
        creator: 'erd1...',
        status: 'pending',
        participants: [],
        requiredParticipants: 4,
        entryFee: '0.1',
        prize: '0.4',
        createdAt: Date.now() - 3600000,
        text: 'Sample text for typing race',
        textDifficulty: 'medium',
        textLength: 'medium',
      },
    ];
  }

  /**
   * Get race details from the smart contract
   * @param raceId Race ID
   * @returns Promise with race details
   */
  async getRaceDetails(raceId: string): Promise<Race | null> {
    // This would be implemented with the actual backend API or contract query
    // For now, we return a mock response if the id matches
    if (raceId === '1') {
      return {
        id: raceId,
        title: 'Speed Demons',
        description: 'Fast typing race for pros',
        creator: 'erd1...',
        status: 'pending',
        participants: [],
        requiredParticipants: 4,
        entryFee: '0.1',
        prize: '0.4',
        createdAt: Date.now() - 3600000,
        text: 'Sample text for typing race',
        textDifficulty: 'medium',
        textLength: 'medium',
      };
    }
    return null;
  }

  /**
   * Get race results from the smart contract
   * @param raceId Race ID
   * @returns Promise with race results
   */
  async getRaceResults(raceId: string): Promise<RaceResult[]> {
    // This would be implemented with the actual backend API or contract query
    // For now, we return a mock response
    return [
      {
        player: 'erd1...',
        wpm: 80,
        accuracy: 95,
        timeTaken: 60,
        cryptoProof: '0x...',
      },
    ];
  }

  /**
   * Helper function to parse EGLD amount
   * @param amount EGLD amount as string
   * @returns Amount in base denomination as string
   */
  private parseEgldAmount(amount: string): string {
    // Convert to base denomination (1 EGLD = 10^18)
    const amountFloat = parseFloat(amount);
    if (isNaN(amountFloat)) {
      return '0';
    }
    // We use a large factor for precision
    const factor = 1000000000000000000;
    const amountBase = Math.floor(amountFloat * factor);
    return amountBase.toString();
  }
}

// Create singleton instance
export const multiversxService = new MultiversxService(); 