import React from 'react';  
import { useNavigate } from 'react-router-dom';
import Button from '../components/Button';  
import DescriptionSection from '../components/DescriptionSection';
import CategoriesCarousel from './CategoriesCarousel';
import Header from '../components/Header';
import Footer from '../components/Footer';
import styles from './HomePage.module.css';  

const MainContent = () => {  
    const navigate = useNavigate();  

    return (  
        <div className={styles.homePage}>  
            <div className={styles.mainContent}>  
                {/* Buttons for navigation */}
                <Button text="Become a Volunteer" onClick={() => navigate('/volunteers')} />  
                <Button text="Join as a Partner" onClick={() => navigate('/corporate')} />  

                {/* Description section with both title & text */}
                <DescriptionSection description="We’re dedicated to bridging the gap between those ready to help and those who need support. Explore our initiatives to make a difference in the lives of others." />

                <CategoriesCarousel />  

                {/* Request Support Section - Only Title + Button */}
                <DescriptionSection title="Need Help? We're Here for You">
                    <Button text="Request Support" onClick={() => navigate('/support')} />
                </DescriptionSection>  
            </div>  

            {/* Footer */}
            <Footer />  
        </div>  
    );  
};  

export default HomePage;
