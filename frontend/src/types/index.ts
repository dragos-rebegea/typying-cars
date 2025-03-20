// Auth types
export interface PlayerProfile {
  address: string;
  username: string;
  level: number;
  averageWpm: number;
  accuracy: number;
  racesWon: number;
  totalRaces: number;
  rewardsEarned: string;
  bio?: string;
  balance?: string;
  avatarId?: number;
  rating?: number;
  wins?: number;
  highestWpm?: number;
}

// Race types
export interface RaceParticipant {
  address: string;
  username: string;
  progress: number;
  wpm: number;
  accuracy: number;
  finishTime?: number;
  position?: number;
}

export interface Race {
  id: string;
  title: string;
  description?: string;
  creator: string;
  status: 'pending' | 'active' | 'completed';
  participants: RaceParticipant[];
  requiredParticipants: number;
  entryFee: string;
  prize: string;
  createdAt: number;
  startedAt?: number;
  completedAt?: number;
  text: string;
  textDifficulty: 'easy' | 'medium' | 'hard';
  textLength: 'short' | 'medium' | 'long';
}

// Typing types
export interface TypingState {
  currentText: string;
  progress: number;
  textIndex: number;
  wpm: number;
  accuracy: number;
  errorCount: number;
  startTime: number | null;
  endTime: number | null;
}

// Race status enum
export enum RaceStatus {
  Registration = 0,
  Active = 1,
  Completed = 2,
  Cancelled = 3,
}

// Race result type
export interface RaceResult {
  player: string;
  wpm: number;
  accuracy: number;
  timeTaken: number;
  cryptoProof: string;
}

// Race details type
export interface RaceDetails {
  raceId: number;
  createdBy: string;
  maxParticipants: number;
  difficulty: number;
  textId: number;
  status: RaceStatus;
  entryFee: string;
  startTimestamp: number;
  endTimestamp: number;
  participants: string[];
  results: RaceResult[];
}

// Typing test type
export interface TypingTest {
  id: number;
  text: string;
  difficulty: number;
}

// Avatar type
export interface Avatar {
  id: number;
  name: string;
  image: string;
}

// Theme colors
export interface ThemeColors {
  primary: string;
  secondary: string;
  accent: string;
  background: string;
} 