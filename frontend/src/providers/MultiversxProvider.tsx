import React, { PropsWithChildren } from 'react';
import { DappProvider } from '@multiversx/sdk-dapp/wrappers';
import { EnvironmentsEnum } from '@multiversx/sdk-dapp/types';
import { NotificationModal } from '@multiversx/sdk-dapp/UI/NotificationModal';
import { SignTransactionsModals } from '@multiversx/sdk-dapp/UI/SignTransactionsModals';
import { TransactionsToastList } from '@multiversx/sdk-dapp/UI/TransactionsToastList';

// Network configuration for devnet
const mvxConfig = {
  chainId: 'D',  // devnet
  walletConnectV2ProjectId: '', // you can add a WalletConnect project ID here if needed
  apiTimeout: 10000,
  walletConnectV2RelayAddresses: ['wss://relay.walletconnect.com']
};

/**
 * MultiversX provider based on the official template
 */
const MultiversxProvider: React.FC<PropsWithChildren> = ({ children }) => {
  return (
    <DappProvider
      environment={EnvironmentsEnum.devnet}
      customNetworkConfig={mvxConfig}
      dappConfig={{
        shouldUseWebViewProvider: true,
        logoutRoute: '/login'
      }}
    >
      <TransactionsToastList />
      <NotificationModal />
      <SignTransactionsModals />
      {children}
    </DappProvider>
  );
};

export default MultiversxProvider; 