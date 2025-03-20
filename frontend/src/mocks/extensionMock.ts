/**
 * Mock implementation of MultiversX extension
 * Used as a fallback when the extension is malfunctioning
 */

// Simple noop function
const noop = () => {};

// Mock account data
const mockAccountData = {
  address: '',
  balance: '0',
  nonce: 0
};

// Extension mock object
export const extensionMock = {
  // Core methods
  account: async () => mockAccountData,
  address: async () => '',
  login: async () => ({ 
    address: '', 
    signature: '', 
    token: '' 
  }),
  logout: async () => true,
  getAddress: async () => '',
  signTransaction: async () => ({}),
  signTransactions: async () => ([]),
  signMessage: async () => ({ signature: '' }),

  // Helper methods that aren't in the real extension
  isInitialized: true,
  isMock: true
};

/**
 * Inject mock extension into window object when real one fails
 */
export const injectMockExtensionIfNeeded = () => {
  try {
    // @ts-ignore - MultiversX Extension API
    if (!window.MultiversXProvider && !window.elrondWallet) {
      console.warn('MultiversX extension not found, injecting mock');
      // @ts-ignore - Adding mock to window
      window.MultiversXProvider = extensionMock;
      return true;
    }

    // Test if the extension is working correctly
    // @ts-ignore - MultiversX Extension API
    const provider = window.MultiversXProvider || window.elrondWallet;
    
    if (!provider || typeof provider.login !== 'function') {
      console.warn('MultiversX extension found but appears to be malfunctioning, injecting mock');
      // @ts-ignore - Adding mock to window
      window.MultiversXProvider = extensionMock;
      return true;
    }
  } catch (error) {
    console.warn('Error checking MultiversX extension, injecting mock', error);
    // @ts-ignore - Adding mock to window
    window.MultiversXProvider = extensionMock;
    return true;
  }
  
  return false;
};

export default extensionMock; 