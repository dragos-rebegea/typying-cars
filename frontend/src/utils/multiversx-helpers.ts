// Helper functions for MultiversX wallet functionality

/**
 * Safely checks if MultiversX browser extension is installed
 * @returns boolean indicating if extension is present
 */
export const isExtensionAvailable = (): boolean => {
  try {
    // @ts-ignore - MultiversX Extension API
    return !!window.MultiversXProvider || !!window.elrondWallet;
  } catch (err) {
    return false;
  }
};

/**
 * Get the appropriate MultiversX provider based on environment
 */
export const getMultiversXProvider = () => {
  try {
    // @ts-ignore - MultiversX Extension API
    return window.MultiversXProvider || window.elrondWallet || null;
  } catch (err) {
    return null;
  }
};

/**
 * Check if extension is properly initialized (has a valid state)
 */
export const isExtensionInitialized = (): boolean => {
  try {
    const provider = getMultiversXProvider();
    // Validate the provider has required properties
    if (!provider) return false;
    
    // @ts-ignore - MultiversX Extension API
    return typeof provider.account === 'function' && 
      // @ts-ignore - MultiversX Extension API
      typeof provider.login === 'function';
  } catch (err) {
    return false;
  }
};

/**
 * Safely calls extension methods to avoid exceptions
 * @param methodName Extension method to call 
 * @param args Arguments to pass to the method
 * @returns Result of the method call or null if failed
 */
export const safeExtensionCall = async (methodName: string, ...args: any[]): Promise<any> => {
  try {
    const provider = getMultiversXProvider();
    if (!provider || typeof provider[methodName] !== 'function') {
      return null;
    }
    return await provider[methodName](...args);
  } catch (err) {
    console.error(`Error calling ${methodName}:`, err);
    return null;
  }
}; 