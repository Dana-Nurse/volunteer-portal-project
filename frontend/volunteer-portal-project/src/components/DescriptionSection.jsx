import React from 'react';

const DescriptionSection = ({ title, description, children }) => {
    return (
        <div>
            {title && <h2>{title}</h2>}
            {description && <p>{description}</p>}
            {children}
        </div>
    );
};

export default DescriptionSection;
