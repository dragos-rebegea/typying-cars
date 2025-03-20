import { createSlice, PayloadAction } from '@reduxjs/toolkit';
import { PlayerProfile } from '../../types';

export interface AuthState {
  isAuthenticated: boolean;
  isLoading: boolean;
  error: string | null;
  playerProfile: PlayerProfile | null;
}

const initialState: AuthState = {
  isAuthenticated: false,
  isLoading: false,
  error: null,
  playerProfile: null
};

export const authSlice = createSlice({
  name: 'auth',
  initialState,
  reducers: {
    loginStart: (state) => {
      state.isLoading = true;
      state.error = null;
    },
    loginSuccess: (state, action: PayloadAction<{ address: string, account: any }>) => {
      state.isAuthenticated = true;
      state.isLoading = false;
      
      // Create a default player profile
      state.playerProfile = {
        address: action.payload.address,
        username: `Player${action.payload.address.substring(0, 6)}`,
        level: 1,
        averageWpm: 0,
        accuracy: 0,
        racesWon: 0,
        totalRaces: 0,
        rewardsEarned: '0',
        balance: action.payload.account?.balance || '0',
        // Additional fields from the PlayerProfile type
        avatarId: 1,
        rating: 0,
        wins: 0,
        highestWpm: 0
      };
    },
    loginFailure: (state, action: PayloadAction<string>) => {
      state.isLoading = false;
      state.error = action.payload;
    },
    logout: (state) => {
      return initialState;
    },
    updateProfile: (state, action: PayloadAction<{ username: string, bio?: string }>) => {
      if (state.playerProfile) {
        state.playerProfile = {
          ...state.playerProfile,
          username: action.payload.username,
          bio: action.payload.bio
        };
      }
    },
    updateStats: (state, action: PayloadAction<{ wpm: number, accuracy: number, won: boolean }>) => {
      if (state.playerProfile) {
        const { wpm, accuracy, won } = action.payload;
        const totalRaces = state.playerProfile.totalRaces + 1;
        const racesWon = won ? state.playerProfile.racesWon + 1 : state.playerProfile.racesWon;
        const wins = won ? (state.playerProfile.wins || 0) + 1 : (state.playerProfile.wins || 0);
        
        // Calculate new averages
        const oldWpmTotal = state.playerProfile.averageWpm * state.playerProfile.totalRaces;
        const newAverageWpm = Math.round((oldWpmTotal + wpm) / totalRaces);
        
        const oldAccuracyTotal = state.playerProfile.accuracy * state.playerProfile.totalRaces;
        const newAccuracy = Math.round((oldAccuracyTotal + accuracy) / totalRaces);
        
        // Update high score if necessary
        const highestWpm = Math.max(wpm, state.playerProfile.highestWpm || 0);
        
        state.playerProfile = {
          ...state.playerProfile,
          averageWpm: newAverageWpm,
          accuracy: newAccuracy,
          racesWon,
          totalRaces,
          wins,
          highestWpm,
          // Level up for every 5 races
          level: Math.max(1, Math.floor(totalRaces / 5) + 1)
        };
      }
    }
  }
});

export const {
  loginStart,
  loginSuccess,
  loginFailure,
  logout,
  updateProfile,
  updateStats
} = authSlice.actions;

export default authSlice.reducer; 