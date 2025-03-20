import React, { useState, useEffect, useRef } from 'react';
import { useParams, Link, useNavigate } from 'react-router-dom';
import { useAuth } from '../hooks/useAuth';
import { multiversxService } from '../services/MultiversxService';

interface RaceText {
  title: string;
  content: string;
}

interface RaceData {
  id: string;
  name: string;
  text: RaceText;
  participants: {
    address: string;
    progress: number;
    wpm: number;
  }[];
  status: 'waiting' | 'running' | 'finished';
  startTime: number | null;
  endTime: number | null;
}

const RacingArena: React.FC = () => {
  const { raceId } = useParams<{ raceId: string }>();
  const { playerProfile } = useAuth();
  const navigate = useNavigate();
  
  // Sample race data (would be fetched from API)
  const [race, setRace] = useState<RaceData>({
    id: raceId || '0',
    name: 'Speed Challenge',
    text: {
      title: 'Blockchain Technology',
      content: 'A blockchain is a distributed database or ledger shared among computer network nodes. They store information in digital format. Blockchains are best known for their crucial role in cryptocurrency systems for maintaining a secure and decentralized record of transactions, but they are not limited to cryptocurrency uses. Blockchains can be used to make data in any industry immutable—the term used to describe the inability to be altered.'
    },
    participants: [
      { address: '0x123456789abcdef', progress: 0, wpm: 0 },
      { address: '0x987654321fedcba', progress: 0, wpm: 0 }
    ],
    status: 'waiting',
    startTime: null,
    endTime: null
  });
  
  const [input, setInput] = useState('');
  const [currentPosition, setCurrentPosition] = useState(0);
  const [startTime, setStartTime] = useState<number | null>(null);
  const [endTime, setEndTime] = useState<number | null>(null);
  const [results, setResults] = useState<{
    wpm: number;
    accuracy: number;
    time: number;
  } | null>(null);
  
  const inputRef = useRef<HTMLInputElement>(null);
  
  // Start race when component mounts
  useEffect(() => {
    const timer = setTimeout(() => {
      if (race.status === 'waiting') {
        startRace();
      }
    }, 3000);
    
    return () => clearTimeout(timer);
  }, []);
  
  // Focus input field
  useEffect(() => {
    if (inputRef.current) {
      inputRef.current.focus();
    }
  }, [race.status]);
  
  const startRace = () => {
    setRace(prev => ({ ...prev, status: 'running', startTime: Date.now() }));
    setStartTime(Date.now());
  };
  
  const finishRace = () => {
    const now = Date.now();
    setEndTime(now);
    setRace(prev => ({ ...prev, status: 'finished', endTime: now }));
    
    // Calculate results
    const timeInMinutes = (now - (startTime || now)) / 60000;
    const words = race.text.content.split(' ').length;
    const wpm = Math.round(words / timeInMinutes);
    
    // Simple accuracy calculation
    const correctChars = race.text.content.split('').filter((char, i) => 
      race.text.content.charAt(i) === input.charAt(i)
    ).length;
    const accuracy = Math.round((correctChars / race.text.content.length) * 100);
    
    setResults({
      wpm,
      accuracy,
      time: Math.round((now - (startTime || now)) / 1000)
    });
  };
  
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const value = e.target.value;
    setInput(value);
    
    // Update progress
    const progress = Math.min(100, Math.round((value.length / race.text.content.length) * 100));
    setCurrentPosition(value.length);
    
    // Update race state with player progress
    setRace(prev => ({
      ...prev,
      participants: prev.participants.map(p => 
        p.address === '0x123456789abcdef' 
          ? { ...p, progress, wpm: calculateWPM(value.length) } 
          : p
      )
    }));
    
    // Check if race is complete
    if (value.length >= race.text.content.length) {
      finishRace();
    }
  };
  
  const calculateWPM = (charCount: number) => {
    if (!startTime) return 0;
    const timeInMinutes = (Date.now() - startTime) / 60000;
    if (timeInMinutes === 0) return 0;
    
    // Approximate WPM calculation
    return Math.round((charCount / 5) / timeInMinutes);
  };
  
  const getTextDisplay = () => {
    const text = race.text.content;
    const typed = input;
    
    return (
      <div className="font-mono text-lg leading-relaxed bg-background p-4 rounded-md">
        {text.split('').map((char, index) => {
          let className = '';
          if (index < typed.length) {
            className = typed[index] === char 
              ? 'text-green-400' 
              : 'text-red-400 bg-red-900 bg-opacity-50';
          } else if (index === typed.length) {
            className = 'bg-gray-700 text-white';
          } else {
            className = 'text-gray-400';
          }
          
          return (
            <span key={index} className={className}>
              {char}
            </span>
          );
        })}
      </div>
    );
  };
  
  return (
    <div className="container mx-auto py-8 px-4">
      <div className="mb-8">
        <h1 className="text-3xl font-bold text-white mb-2">{race.name}</h1>
        <h2 className="text-xl text-gray-300">{race.text.title}</h2>
      </div>
      
      {race.status === 'waiting' && (
        <div className="bg-background-light p-6 rounded-lg mb-6 text-center">
          <h3 className="text-2xl font-bold text-primary mb-2">Race Starting Soon</h3>
          <p className="text-white">Get ready to type!</p>
        </div>
      )}
      
      {race.status === 'finished' && results && (
        <div className="bg-background-light p-6 rounded-lg mb-6">
          <h3 className="text-2xl font-bold text-primary mb-4">Race Results</h3>
          
          <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 mb-6">
            <div className="bg-background p-4 rounded-lg text-center">
              <p className="text-gray-400 mb-1">WPM</p>
              <p className="text-3xl font-bold text-white">{results.wpm}</p>
            </div>
            <div className="bg-background p-4 rounded-lg text-center">
              <p className="text-gray-400 mb-1">Accuracy</p>
              <p className="text-3xl font-bold text-white">{results.accuracy}%</p>
            </div>
            <div className="bg-background p-4 rounded-lg text-center">
              <p className="text-gray-400 mb-1">Time</p>
              <p className="text-3xl font-bold text-white">{results.time}s</p>
            </div>
          </div>
          
          <div className="flex justify-center">
            <button
              onClick={() => navigate('/dashboard')}
              className="bg-primary hover:bg-primary-dark text-background-dark px-6 py-3 rounded-md font-medium transition-colors"
            >
              Back to Dashboard
            </button>
          </div>
        </div>
      )}
      
      <div className="bg-background-light p-6 rounded-lg mb-6">
        {getTextDisplay()}
        
        <div className="mt-4">
          <input
            ref={inputRef}
            type="text"
            value={input}
            onChange={handleInputChange}
            disabled={race.status !== 'running'}
            className="w-full bg-background border border-gray-700 rounded-md py-3 px-4 text-white focus:outline-none focus:ring-2 focus:ring-primary"
            placeholder={race.status === 'waiting' ? 'Waiting for race to start...' : 'Start typing...'}
          />
        </div>
      </div>
      
      <div className="bg-background-light p-6 rounded-lg">
        <h3 className="text-xl font-semibold text-white mb-4">Race Progress</h3>
        
        <div className="space-y-4">
          {race.participants.map((participant, index) => (
            <div key={index} className="bg-background p-4 rounded-md">
              <div className="flex justify-between items-center mb-2">
                <div className="font-mono text-gray-400">
                  {participant.address.slice(0, 6)}...{participant.address.slice(-4)}
                  {participant.address === '0x123456789abcdef' && (
                    <span className="ml-2 text-primary">(You)</span>
                  )}
                </div>
                <div className="text-white font-medium">{participant.wpm} WPM</div>
              </div>
              
              <div className="w-full bg-gray-700 rounded-full h-2.5">
                <div 
                  className="bg-primary h-2.5 rounded-full" 
                  style={{ width: `${participant.progress}%` }}
                ></div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};

export default RacingArena; 