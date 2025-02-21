import React from 'react';
import styles from './Button.module.css';

const Button = ({ text, onClick, isSubmit = false }) => {
    const buttonClass = `${styles.button} ${isSubmit ? styles.submit : styles.primary}`;
    
    return <button className={buttonClass} onClick={onClick}>{text}</button>;
};

export default Button;


