import React from 'react';

interface ConnectWalletButtonProps {
  onConnectSuccess: (address: string, account: any) => void;
  isConnecting: boolean;
  setIsConnecting: (isConnecting: boolean) => void;
}

const ConnectWalletButton: React.FC<ConnectWalletButtonProps> = ({
  onConnectSuccess,
  isConnecting,
  setIsConnecting
}) => {
  const handleConnect = async () => {
    try {
      setIsConnecting(true);
      
      // This is a placeholder for the actual wallet connection logic
      // In a real application, you would use the MultiversX SDK
      setTimeout(() => {
        // Simulate successful connection after 1.5 seconds
        const mockAddress = '0x' + Array(40).fill(0).map(() => Math.floor(Math.random() * 16).toString(16)).join('');
        const mockAccount = { balance: '1000000000000000000' };
        
        onConnectSuccess(mockAddress, mockAccount);
        setIsConnecting(false);
      }, 1500);
      
    } catch (error) {
      console.error('Error connecting wallet:', error);
      setIsConnecting(false);
    }
  };

  return (
    <button
      onClick={handleConnect}
      disabled={isConnecting}
      className="btn-secondary px-4 py-2"
    >
      {isConnecting ? 'Connecting...' : 'Connect Wallet'}
    </button>
  );
};

export default ConnectWalletButton; 