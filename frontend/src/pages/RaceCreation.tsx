import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAppSelector } from '../store';

const RaceCreation: React.FC = () => {
  const navigate = useNavigate();
  const { user } = useAppSelector((state: any) => state.auth);
  
  const [formData, setFormData] = useState({
    name: '',
    difficulty: 'medium',
    maxParticipants: 3,
    textId: 1
  });
  
  const [isSubmitting, setIsSubmitting] = useState(false);
  
  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) => {
    const { name, value } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: name === 'maxParticipants' || name === 'textId' ? parseInt(value) : value
    }));
  };
  
  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsSubmitting(true);
    
    try {
      // Here we would call MultiversxService to create the race on chain
      console.log('Creating race with data:', formData);
      
      // Simulate API call
      await new Promise(resolve => setTimeout(resolve, 1000));
      
      // Success, redirect to dashboard
      navigate('/dashboard');
    } catch (error) {
      console.error('Error creating race:', error);
      setIsSubmitting(false);
    }
  };
  
  const difficultyOptions = [
    { value: 'easy', label: 'Easy' },
    { value: 'medium', label: 'Medium' },
    { value: 'hard', label: 'Hard' }
  ];
  
  const textOptions = [
    { id: 1, title: 'Programming Basics' },
    { id: 2, title: 'Blockchain Technology' },
    { id: 3, title: 'Smart Contracts' }
  ];
  
  return (
    <div className="container mx-auto py-8 px-4">
      <div className="max-w-2xl mx-auto">
        <h1 className="text-3xl font-bold text-white mb-8">Create New Race</h1>
        
        <div className="bg-background-light rounded-lg p-6 mb-8">
          <h2 className="text-xl font-semibold text-white mb-4">Race Details</h2>
          
          <form onSubmit={handleSubmit}>
            <div className="mb-4">
              <label htmlFor="name" className="block text-gray-400 mb-2">Race Name</label>
              <input
                type="text"
                id="name"
                name="name"
                value={formData.name}
                onChange={handleChange}
                placeholder="Enter a name for your race"
                className="w-full bg-background border border-gray-700 rounded-md py-2 px-4 text-white focus:outline-none focus:ring-2 focus:ring-primary"
                required
              />
            </div>
            
            <div className="mb-4">
              <label htmlFor="difficulty" className="block text-gray-400 mb-2">Difficulty</label>
              <select
                id="difficulty"
                name="difficulty"
                value={formData.difficulty}
                onChange={handleChange}
                className="w-full bg-background border border-gray-700 rounded-md py-2 px-4 text-white focus:outline-none focus:ring-2 focus:ring-primary"
              >
                {difficultyOptions.map(option => (
                  <option key={option.value} value={option.value}>
                    {option.label}
                  </option>
                ))}
              </select>
            </div>
            
            <div className="mb-4">
              <label htmlFor="maxParticipants" className="block text-gray-400 mb-2">Max Participants</label>
              <input
                type="number"
                id="maxParticipants"
                name="maxParticipants"
                value={formData.maxParticipants}
                onChange={handleChange}
                min={2}
                max={10}
                className="w-full bg-background border border-gray-700 rounded-md py-2 px-4 text-white focus:outline-none focus:ring-2 focus:ring-primary"
              />
            </div>
            
            <div className="mb-6">
              <label htmlFor="textId" className="block text-gray-400 mb-2">Text Selection</label>
              <select
                id="textId"
                name="textId"
                value={formData.textId}
                onChange={handleChange}
                className="w-full bg-background border border-gray-700 rounded-md py-2 px-4 text-white focus:outline-none focus:ring-2 focus:ring-primary"
              >
                {textOptions.map(option => (
                  <option key={option.id} value={option.id}>
                    {option.title}
                  </option>
                ))}
              </select>
            </div>
            
            <div className="flex items-center justify-between">
              <button
                type="button"
                onClick={() => navigate('/dashboard')}
                className="bg-gray-700 hover:bg-gray-600 text-white py-2 px-4 rounded-md transition-colors"
              >
                Cancel
              </button>
              <button
                type="submit"
                disabled={isSubmitting}
                className="bg-primary hover:bg-primary-dark text-background-dark py-2 px-6 rounded-md font-medium transition-colors disabled:opacity-70"
              >
                {isSubmitting ? 'Creating...' : 'Create Race'}
              </button>
            </div>
          </form>
        </div>
        
        <div className="bg-background-light rounded-lg p-6">
          <h3 className="text-lg font-semibold text-white mb-3">Race Creation Fee</h3>
          <p className="text-gray-400 mb-2">Creating a race requires a small fee to cover blockchain transaction costs.</p>
          <div className="flex justify-between items-center bg-background p-3 rounded-md">
            <span className="text-white">Fee Amount:</span>
            <span className="text-primary font-bold">0.001 EGLD</span>
          </div>
          <p className="text-sm text-gray-500 mt-2">
            Your current balance: {user?.account?.balance || '0'} EGLD
          </p>
        </div>
      </div>
    </div>
  );
};

export default RaceCreation; 