import { EnvironmentsEnum } from '@multiversx/sdk-dapp/types';

// Network configuration
export const multiversxConfig = {
  // For development, we'll use the devnet
  // In production, this should be mainnet
  network: EnvironmentsEnum.devnet,
  
  // Gateway endpoints
  apiUrl: 'https://devnet-api.multiversx.com',
  gatewayUrl: 'https://devnet-gateway.multiversx.com',
  explorerUrl: 'https://devnet-explorer.multiversx.com',
  
  // Wallet connect bridge
  walletConnectBridge: 'https://bridge.walletconnect.org',
  
  // The smart contract address for the Typing Cars game
  // This should be updated after deploying the smart contract
  typingCarsContractAddress: 'erd1qqqqqqqqqqqqqpgqdc7yrxgc5d3esf2rju82wevhf5hu8pz20jpsk63cg3',
  
  // Chain ID for devnet
  chainId: 'D'
};

// Mainnet version for reference (uncomment and use for production)
// export const multiversxConfig = {
//   network: EnvironmentsEnum.mainnet,
//   apiUrl: 'https://api.multiversx.com',
//   gatewayUrl: 'https://gateway.multiversx.com',
//   explorerUrl: 'https://explorer.multiversx.com',
//   walletConnectBridge: 'https://bridge.walletconnect.org',
//   typingCarsContractAddress: 'YOUR_DEPLOYED_CONTRACT_ADDRESS',
//   chainId: '1'
// }; 