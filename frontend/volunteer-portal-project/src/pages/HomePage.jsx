import React from 'react';
import Header from '../components/Header';  // Import the Header component from the components folder
import Footer from '../components/Footer';  // Import the Footer component from the components folder
import MainContent from '../components/MainContent';  // Import the MainContent component from the components folder


function HomePage() {
    return (
        <div>
            <Header />
            <MainContent />
            <Footer />
        </div>
    );
};

export default HomePage;
