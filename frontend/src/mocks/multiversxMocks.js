// This file provides mocks for MultiversX modules that cause issues in the browser environment

// Mock for @multiversx/sdk-core/out/transaction
export const Transaction = {
  create: () => ({}),
  fromPlainObject: () => ({}),
  fromApiHttpResponse: () => ({})
};

// Mock for @multiversx/sdk-core/out/signature
export const Signature = {
  fromHex: () => ({}),
  verify: () => true
};

export default {
  Transaction,
  Signature
}; 