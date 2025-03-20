import { useAppSelector } from '../store';
import { RootState } from '../store';
import { AuthState } from '../store/slices/authSlice';

export const useAuth = (): AuthState => {
  return useAppSelector((state: RootState) => state.auth as AuthState);
}; 