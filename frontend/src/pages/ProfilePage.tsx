import React from 'react';
import { useAppSelector } from '../store';

interface User {
  address?: string;
  account?: {
    balance?: string;
  };
}

const ProfilePage: React.FC = () => {
  const { user } = useAppSelector((state: any) => state.auth);
  
  return (
    <div className="container mx-auto py-8 px-4">
      <h1 className="text-3xl font-bold text-white mb-8">My Profile</h1>
      
      <div className="bg-background-light rounded-lg p-6 mb-8">
        <h2 className="text-xl font-semibold text-white mb-4">Account Information</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          <div>
            <p className="text-gray-400 mb-1">Wallet Address</p>
            <p className="text-white font-mono bg-background p-2 rounded overflow-x-auto">
              {user?.address || 'Not connected'}
            </p>
          </div>
          <div>
            <p className="text-gray-400 mb-1">Balance</p>
            <p className="text-white">
              {user?.account?.balance || '0'} EGLD
            </p>
          </div>
        </div>
      </div>
      
      <div className="bg-background-light rounded-lg p-6 mb-8">
        <h2 className="text-xl font-semibold text-white mb-4">Stats</h2>
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-4">
          <div className="bg-background p-4 rounded-lg">
            <p className="text-gray-400 text-sm">Total Races</p>
            <p className="text-2xl font-bold text-white">0</p>
          </div>
          <div className="bg-background p-4 rounded-lg">
            <p className="text-gray-400 text-sm">Races Won</p>
            <p className="text-2xl font-bold text-white">0</p>
          </div>
          <div className="bg-background p-4 rounded-lg">
            <p className="text-gray-400 text-sm">Average WPM</p>
            <p className="text-2xl font-bold text-white">0</p>
          </div>
          <div className="bg-background p-4 rounded-lg">
            <p className="text-gray-400 text-sm">Average Accuracy</p>
            <p className="text-2xl font-bold text-white">0%</p>
          </div>
        </div>
      </div>
      
      <div className="bg-background-light rounded-lg p-6">
        <h2 className="text-xl font-semibold text-white mb-4">Recent Activity</h2>
        <div className="text-center py-8 text-gray-400">
          No recent activity to display
        </div>
      </div>
    </div>
  );
};

export default ProfilePage; 