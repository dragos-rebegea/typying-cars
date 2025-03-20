import { createSlice, PayloadAction } from '@reduxjs/toolkit';
import { TypingState } from '../../types';

const initialState: TypingState = {
  currentText: '',
  progress: 0,
  textIndex: 0,
  wpm: 0,
  accuracy: 100,
  errorCount: 0,
  startTime: null,
  endTime: null
};

export const typingSlice = createSlice({
  name: 'typing',
  initialState,
  reducers: {
    setCurrentText: (state, action: PayloadAction<string>) => {
      state.currentText = action.payload;
      state.progress = 0;
      state.textIndex = 0;
      state.errorCount = 0;
    },
    setProgress: (state, action: PayloadAction<number>) => {
      state.progress = action.payload;
    },
    setWpm: (state, action: PayloadAction<number>) => {
      state.wpm = action.payload;
    },
    setAccuracy: (state, action: PayloadAction<number>) => {
      state.accuracy = action.payload;
    },
    setErrors: (state, action: PayloadAction<number>) => {
      state.errorCount = action.payload;
    },
    startTyping: (state) => {
      state.startTime = Date.now();
      state.endTime = null;
    },
    endTyping: (state) => {
      state.endTime = Date.now();
    },
    resetTyping: (state) => {
      return initialState;
    }
  }
});

export const {
  setCurrentText,
  setProgress,
  setWpm,
  setAccuracy,
  setErrors,
  startTyping,
  endTyping,
  resetTyping
} = typingSlice.actions;

export default typingSlice.reducer; 