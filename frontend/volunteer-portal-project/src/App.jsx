import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import './App.css';

import NavBar from './components/NavBar';
import Footer from './components/Footer';
import HomePage from './pages/HomePage';
import ServicesPage from './pages/ServicesPage';
import VolunteersPage from './pages/VolunteersPage';
import CorporatePage from './pages/CorporatePage';
import RequestSupportPage from './pages/RequestSupportPage';
import BenefitsPage from './pages/BenefitsPage';
import InfoPage from './pages/InfoPage';

function App() {
  return (
    <Router>
      <NavBar /> {/* This ensures the navbar appears on all pages */}

      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/services" element={<ServicesPage />} />
        <Route path="/volunteers" element={<VolunteersPage />} />
        <Route path="/corporate" element={<CorporatePage />} />
        <Route path="/support" element={<RequestSupportPage />} />
        <Route path="/benefits" element={<BenefitsPage />} />
        <Route path="/info" element={<InfoPage />} />
      </Routes>

      <Footer /> {/* This ensures the footer appears on all pages */}
    </Router>
  );
}

export default App;
