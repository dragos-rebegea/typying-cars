import React from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useAppDispatch } from '../store';
import { logout as logoutRedux } from '../store/slices/authSlice';
import { useAuth } from '../hooks/useAuth';

const Navbar: React.FC = () => {
  const dispatch = useAppDispatch();
  const navigate = useNavigate();
  const { isAuthenticated, playerProfile } = useAuth();

  const handleLogout = () => {
    dispatch(logoutRedux());
    navigate('/');
  };

  return (
    <nav className="bg-gray-800 text-white p-4">
      <div className="container mx-auto flex justify-between items-center">
        <Link to="/" className="font-bold text-xl">Typing Cars</Link>
        
        {isAuthenticated ? (
          <div className="flex items-center space-x-4">
            <Link to="/dashboard" className="hover:text-primary transition-colors">
              Dashboard
            </Link>
            <Link to="/create-race" className="hover:text-primary transition-colors">
              Create Race
            </Link>
            <Link to="/profile" className="hover:text-primary transition-colors">
              Profile
            </Link>
            <button
              onClick={handleLogout}
              className="bg-primary hover:bg-primary-dark text-white px-4 py-2 rounded transition-colors"
            >
              Sign Out
            </button>
          </div>
        ) : (
          <div className="flex items-center space-x-4">
            <Link to="/" className="hover:text-primary transition-colors">
              Home
            </Link>
            <Link to="/login" className="hover:text-primary transition-colors">
              Login
            </Link>
          </div>
        )}
      </div>
    </nav>
  );
};

export default Navbar; 