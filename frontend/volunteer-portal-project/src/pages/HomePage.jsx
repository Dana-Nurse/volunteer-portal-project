import React from 'react';
import Header from '../components/Header';  
import Footer from '../components/Footer';  
import MainContent from '../components/MainContent';  

function HomePage() {
    return (
        <div>
            <Header title="The Marinage Collective" description="Connecting Volunteers, Corporates, and Communities in Need." />
            <MainContent />
            <Footer />
        </div>
    );
}

export default HomePage;
