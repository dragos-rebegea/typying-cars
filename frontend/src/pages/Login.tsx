import React, { useEffect } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { useAppDispatch } from '../store';
import {
  ExtensionLoginButton,
  WebWalletLoginButton,
  WalletConnectLoginButton
} from '@multiversx/sdk-dapp/UI';
import { useGetLoginInfo, useGetAccountInfo } from '@multiversx/sdk-dapp/hooks';
import { logout } from '@multiversx/sdk-dapp/utils/logout';

const Login: React.FC = () => {
  const navigate = useNavigate();
  const dispatch = useAppDispatch();
  const { isLoggedIn } = useGetLoginInfo();
  const { address } = useGetAccountInfo();

  // Common props for login buttons
  const commonProps = {
    callbackRoute: '/dashboard',
    nativeAuth: true, // Enable native authentication
    onLoginRedirect: () => navigate('/dashboard')
  };

  // Handle demo login
  const handleDemoLogin = () => {
    localStorage.setItem('demoLoggedIn', 'true');
    navigate('/dashboard');
  };

  // Perform logout when component mounts if user is already logged in
  // This prevents redirection loops
  useEffect(() => {
    // Check if we're on the login page but already logged in
    const isOnLoginPage = window.location.pathname.includes('/login');
    const performLogout = async () => {
      if (isLoggedIn && isOnLoginPage) {
        console.log('Already logged in but on login page, logging out first...');
        try {
          await logout();
          // Clear any local storage related to login state
          localStorage.removeItem('loginMethod');
          localStorage.removeItem('loginToken');
          console.log('Logout complete');
        } catch (err) {
          console.error('Error during logout:', err);
        }
      }
    };

    performLogout();
  }, [isLoggedIn]);

  // Redirect if user logs in through wallet
  useEffect(() => {
    if (isLoggedIn && address) {
      navigate('/dashboard');
    }
  }, [isLoggedIn, address, navigate]);

  // If already logged in with demo mode
  if (localStorage.getItem('demoLoggedIn') === 'true') {
    navigate('/dashboard');
    return null;
  }

  return (
    <div className="min-h-screen flex items-center justify-center bg-background">
      <div className="max-w-md w-full bg-background-dark rounded-lg shadow-lg p-6">
        <div className="text-center mb-8">
          <h1 className="text-3xl font-bold text-primary mb-2">Login</h1>
          <p className="text-text-secondary">
            Connect your MultiversX wallet to continue
          </p>
        </div>

        <div className="space-y-6">
          <div className="bg-background rounded-lg p-4 border border-border">
            <h2 className="text-xl font-medium mb-4 text-text-primary">
              Connect Wallet
            </h2>

            <div className="grid grid-cols-1 gap-3 mb-4">
              <ExtensionLoginButton
                {...commonProps}
                buttonClassName="w-full bg-primary hover:bg-primary-dark text-background-dark py-3 px-4 rounded-md font-medium transition-colors"
                loginButtonText="MultiversX DeFi Wallet"
              />
              
              <WebWalletLoginButton
                {...commonProps}
                buttonClassName="w-full bg-primary hover:bg-primary-dark text-background-dark py-3 px-4 rounded-md font-medium transition-colors"
                loginButtonText="Web Wallet"
              />
              
              <WalletConnectLoginButton
                {...commonProps}
                buttonClassName="w-full bg-primary hover:bg-primary-dark text-background-dark py-3 px-4 rounded-md font-medium transition-colors"
                loginButtonText="xPortal Mobile App"
              />
            </div>
            
            <button
              onClick={handleDemoLogin}
              className="w-full bg-gray-200 hover:bg-gray-300 text-gray-800 py-3 px-4 rounded-md font-medium transition-colors"
            >
              Demo Mode (No Wallet)
            </button>
          </div>

          <div className="text-center text-sm text-text-secondary">
            <Link to="/" className="text-primary hover:text-primary-dark">
              Back to Home
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Login; 