import React, { useState, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useAuth } from '../hooks/useAuth';
import { multiversxService } from '../services/MultiversxService';
import { Race } from '../types';

const Dashboard: React.FC = () => {
  const { playerProfile } = useAuth();
  const navigate = useNavigate();
  const [loading, setLoading] = useState(true);
  const [races, setRaces] = useState<Race[]>([]);
  const [joiningRace, setJoiningRace] = useState<string | null>(null);

  useEffect(() => {
    // Fetch available races when component mounts
    const fetchRaces = async () => {
      try {
        const availableRaces = await multiversxService.getAvailableRaces();
        setRaces(availableRaces);
      } catch (error) {
        console.error('Error fetching races:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchRaces();
  }, []);

  const handleJoinRace = async (raceId: string, entryFee: string) => {
    if (joiningRace) return; // Prevent multiple clicks
    
    setJoiningRace(raceId);
    try {
      const sessionId = await multiversxService.joinRace(parseInt(raceId), entryFee);
      console.log('Joined race with session ID:', sessionId);
      
      // Navigate to the race page
      setTimeout(() => {
        navigate(`/race/${raceId}`);
      }, 1500);
    } catch (error) {
      console.error('Error joining race:', error);
      alert('Failed to join race. Please try again.');
      setJoiningRace(null);
    }
  };

  const handleClaimRewards = async (raceId: string) => {
    try {
      const sessionId = await multiversxService.claimRewards(parseInt(raceId));
      console.log('Claimed rewards with session ID:', sessionId);
      alert('Rewards claimed successfully!');
    } catch (error) {
      console.error('Error claiming rewards:', error);
      alert('Failed to claim rewards. Please try again.');
    }
  };

  return (
    <div className="container mx-auto px-6 py-8">
      <div className="grid grid-cols-1 md:grid-cols-3 gap-8 mb-12">
        {/* Stats Card */}
        <div className="bg-background-light p-6 rounded-lg shadow-md">
          <h2 className="text-xl font-semibold mb-4 text-white">Your Stats</h2>
          <div className="space-y-3">
            <div className="flex justify-between">
              <span className="text-gray-300">WPM Average:</span>
              <span className="text-primary font-medium">{playerProfile?.averageWpm || 0}</span>
            </div>
            <div className="flex justify-between">
              <span className="text-gray-300">Accuracy:</span>
              <span className="text-primary font-medium">{playerProfile?.accuracy || 0}%</span>
            </div>
            <div className="flex justify-between">
              <span className="text-gray-300">Races Won:</span>
              <span className="text-primary font-medium">{playerProfile?.racesWon || 0}</span>
            </div>
            <div className="flex justify-between">
              <span className="text-gray-300">Total Races:</span>
              <span className="text-primary font-medium">{playerProfile?.totalRaces || 0}</span>
            </div>
          </div>
        </div>

        {/* Balance Card */}
        <div className="bg-background-light p-6 rounded-lg shadow-md">
          <h2 className="text-xl font-semibold mb-4 text-white">Your Balance</h2>
          <div className="text-3xl font-bold text-primary mb-2">
            {playerProfile?.balance || '0'} <span className="text-sm text-gray-400">EGLD</span>
          </div>
          <div className="text-gray-400 text-sm">
            Rewards Earned: {playerProfile?.rewardsEarned || '0'} EGLD
          </div>
        </div>

        {/* Quick Actions */}
        <div className="bg-background-light p-6 rounded-lg shadow-md">
          <h2 className="text-xl font-semibold mb-4 text-white">Quick Actions</h2>
          <div className="space-y-3">
            <Link 
              to="/create-race" 
              className="block w-full bg-primary hover:bg-primary-dark text-center text-background-dark py-2 rounded transition-colors"
            >
              Create New Race
            </Link>
            <Link 
              to="/profile" 
              className="block w-full bg-secondary hover:bg-secondary-dark text-center text-white py-2 rounded transition-colors"
            >
              Edit Profile
            </Link>
          </div>
        </div>
      </div>

      {/* Active Races */}
      <div className="mb-12">
        <div className="flex justify-between items-center mb-6">
          <h2 className="text-2xl font-bold text-white">Active Races</h2>
          <Link 
            to="/create-race" 
            className="bg-primary hover:bg-primary-dark text-background-dark px-4 py-2 rounded transition-colors"
          >
            Create Race
          </Link>
        </div>

        {loading ? (
          <div className="bg-background-light rounded-lg p-10 text-center">
            <p className="text-gray-400">Loading races...</p>
          </div>
        ) : races.length > 0 ? (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {races.map(race => (
              <div key={race.id} className="bg-background-light rounded-lg overflow-hidden shadow-md">
                <div className="p-6">
                  <h3 className="text-lg font-semibold text-white mb-2">{race.title}</h3>
                  <div className="text-gray-400 mb-4">
                    <div className="flex justify-between mb-1">
                      <span>Participants:</span>
                      <span>{race.participants.length}/{race.requiredParticipants}</span>
                    </div>
                    <div className="flex justify-between">
                      <span>Entry Fee:</span>
                      <span>{race.entryFee} EGLD</span>
                    </div>
                    <div className="flex justify-between mt-1">
                      <span>Prize Pool:</span>
                      <span>{race.prize} EGLD</span>
                    </div>
                  </div>
                  
                  {race.status === 'completed' ? (
                    <button
                      onClick={() => handleClaimRewards(race.id)}
                      className="block w-full text-center py-2 rounded transition-colors bg-secondary hover:bg-secondary-dark text-white"
                    >
                      Claim Rewards
                    </button>
                  ) : (
                    <button
                      onClick={() => handleJoinRace(race.id, race.entryFee)}
                      disabled={joiningRace === race.id}
                      className={`block w-full text-center py-2 rounded transition-colors ${
                        race.status === 'active' 
                          ? 'bg-green-500 hover:bg-green-600 text-white' 
                          : 'bg-yellow-500 hover:bg-yellow-600 text-black'
                      }`}
                    >
                      {joiningRace === race.id ? 'Joining...' : 
                       race.status === 'active' ? 'Join Race' : 'Waiting for Players'}
                    </button>
                  )}
                </div>
              </div>
            ))}
          </div>
        ) : (
          <div className="bg-background-light rounded-lg p-10 text-center">
            <p className="text-gray-400 mb-4">No active races at the moment.</p>
            <Link 
              to="/create-race" 
              className="inline-block bg-primary hover:bg-primary-dark text-background-dark px-6 py-2 rounded transition-colors"
            >
              Create the First Race
            </Link>
          </div>
        )}
      </div>

      {/* Recent Activity */}
      <div>
        <h2 className="text-2xl font-bold text-white mb-6">Recent Activity</h2>
        <div className="bg-background-light rounded-lg p-6">
          <div className="text-gray-400 text-center py-10">
            Your recent activity will appear here.
          </div>
        </div>
      </div>
    </div>
  );
};

export default Dashboard; 