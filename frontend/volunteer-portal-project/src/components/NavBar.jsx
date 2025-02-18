import React from 'react';
import { Link } from 'react-router-dom';
import './NavBar.css';

function NavBar() {
    return (
        <nav>
            <ul>
                <li><Link to="/">Home</Link></li>
                <li><Link to="/services">Services</Link></li>
                <li><Link to="/volunteers">Volunteers</Link></li>
                <li><Link to="/corporate">Corporate</Link></li>
                <li><Link to="/support">Request Support</Link></li>
                <li><Link to="/benefits">Benefits</Link></li>
                <li><Link to="/info">Info</Link></li>
            </ul>
        </nav>
        );
}

export default NavBar;
