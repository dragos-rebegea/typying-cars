import React from 'react';
import { Link } from 'react-router-dom';

const LandingPage: React.FC = () => {
  return (
    <div className="min-h-screen bg-background flex flex-col items-center justify-center p-6">
      <div className="max-w-4xl w-full text-center">
        <h1 className="text-5xl font-bold text-primary mb-4">Typing Cars</h1>
        <p className="text-xl text-gray-300 mb-8">Race with your typing skills on the blockchain</p>
        
        <div className="flex justify-center gap-4 mb-12">
          <Link 
            to="/login" 
            className="bg-primary hover:bg-primary-dark text-background-dark px-6 py-3 rounded-md font-medium transition-colors"
          >
            Get Started
          </Link>
          <a 
            href="#features" 
            className="bg-background-light hover:bg-gray-700 text-white px-6 py-3 rounded-md font-medium transition-colors"
          >
            Learn More
          </a>
        </div>
        
        <div id="features" className="grid grid-cols-1 md:grid-cols-3 gap-8 mt-12">
          <div className="bg-background-light p-6 rounded-lg">
            <h3 className="text-xl font-semibold text-white mb-3">Race to Win</h3>
            <p className="text-gray-300">Challenge yourself and others to typing races</p>
          </div>
          <div className="bg-background-light p-6 rounded-lg">
            <h3 className="text-xl font-semibold text-white mb-3">Earn Rewards</h3>
            <p className="text-gray-300">Win tokens for your typing speed and accuracy</p>
          </div>
          <div className="bg-background-light p-6 rounded-lg">
            <h3 className="text-xl font-semibold text-white mb-3">Blockchain Powered</h3>
            <p className="text-gray-300">Secured by MultiversX blockchain technology</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default LandingPage; 