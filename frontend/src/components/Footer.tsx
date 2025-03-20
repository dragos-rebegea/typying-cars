import React from 'react';

const Footer: React.FC = () => {
  return (
    <footer className="bg-background-dark py-6">
      <div className="container mx-auto px-6">
        <div className="flex flex-col md:flex-row justify-between items-center">
          <div className="mb-4 md:mb-0">
            <span className="text-primary font-bold">Typing Cars</span>
            <span className="text-gray-400 ml-2">© {new Date().getFullYear()}</span>
          </div>
          <div className="flex space-x-4">
            <button 
              onClick={() => window.open('/terms', '_blank')}
              className="text-gray-400 hover:text-primary transition-colors"
            >
              Terms of Service
            </button>
            <button
              onClick={() => window.open('/privacy', '_blank')}
              className="text-gray-400 hover:text-primary transition-colors"
            >
              Privacy Policy
            </button>
            <button
              onClick={() => window.open('/contact', '_blank')}
              className="text-gray-400 hover:text-primary transition-colors"
            >
              Contact
            </button>
          </div>
        </div>
      </div>
    </footer>
  );
};

export default Footer; 