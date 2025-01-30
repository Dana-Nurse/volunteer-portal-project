import React from 'react';

const Footer = () => {
    return (
        <footer>
            <p>© {new Date().getFullYear()} Volunteer Portal. All rights reserved.</p>
            <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
        </footer>
    );
};

export default Footer;
