import React from 'react';
import { Provider } from 'react-redux';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { store } from './store';
import MultiversxProvider from './providers/MultiversxProvider';
import Login from './pages/Login';
import Dashboard from './pages/Dashboard';
import RaceCreation from './pages/RaceCreation';
import RacingArena from './pages/RacingArena';
import ProfilePage from './pages/ProfilePage';
import NotFoundPage from './pages/NotFoundPage';
import LandingPage from './pages/LandingPage';
import Layout from './components/Layout';
import ProtectedRoute from './components/ProtectedRoute';

function App() {
  return (
    <Provider store={store}>
      <MultiversxProvider>
        <Router>
          <Routes>
            <Route path="/" element={<LandingPage />} />
            <Route path="/login" element={<Login />} />
            <Route element={<Layout />}>
              <Route 
                path="/dashboard" 
                element={
                  <ProtectedRoute>
                    <Dashboard />
                  </ProtectedRoute>
                } 
              />
              <Route 
                path="/create-race" 
                element={
                  <ProtectedRoute>
                    <RaceCreation />
                  </ProtectedRoute>
                } 
              />
              <Route 
                path="/race/:raceId" 
                element={
                  <ProtectedRoute>
                    <RacingArena />
                  </ProtectedRoute>
                } 
              />
              <Route 
                path="/profile" 
                element={
                  <ProtectedRoute>
                    <ProfilePage />
                  </ProtectedRoute>
                } 
              />
            </Route>
            <Route path="*" element={<NotFoundPage />} />
          </Routes>
        </Router>
      </MultiversxProvider>
    </Provider>
  );
}

export default App;
