import { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useGetAccountInfo, useGetLoginInfo } from '@multiversx/sdk-dapp/hooks';
import { logout as mvxLogout } from '@multiversx/sdk-dapp/utils';
import { useAppDispatch } from '../store';
import { loginStart, loginSuccess, loginFailure, logout } from '../store/slices/authSlice';

export const useMultiversxWallet = () => {
  const { address, account } = useGetAccountInfo();
  const { isLoggedIn } = useGetLoginInfo();
  const dispatch = useAppDispatch();
  const navigate = useNavigate();
  const [isInitialized, setIsInitialized] = useState(false);

  useEffect(() => {
    // Handle wallet connection status changes
    if (isLoggedIn && address) {
      if (!isInitialized) {
        dispatch(loginStart());
        try {
          // If the user is logged in with a wallet, update the Redux store
          dispatch(loginSuccess({ address, account }));
          setIsInitialized(true);
        } catch (error: any) {
          console.error('Error handling wallet login:', error);
          dispatch(loginFailure(error?.toString() || 'Unknown error'));
        }
      }
    } else if (isInitialized) {
      setIsInitialized(false);
    }
  }, [isLoggedIn, address, account, dispatch, isInitialized]);

  const connectWallet = async (callbackRoute?: string) => {
    try {
      // The actual connection is handled by MultiversX SDK's UI
      // We'll navigate to the auth page which is provided by the SDK 
      navigate('/unlock', { state: { callbackRoute: callbackRoute || '/dashboard' } });
    } catch (error: any) {
      console.error('Error connecting wallet:', error);
      dispatch(loginFailure('Failed to connect wallet. Please try again.'));
      return false;
    }
    return true;
  };

  const disconnectWallet = async () => {
    try {
      // MultiversX SDK logout
      await mvxLogout();
      // Our app logout
      dispatch(logout());
      navigate('/');
      return true;
    } catch (error: any) {
      console.error('Error disconnecting wallet:', error);
      return false;
    }
  };

  return {
    address,
    account,
    isLoggedIn,
    connectWallet,
    disconnectWallet
  };
};

export default useMultiversxWallet; 