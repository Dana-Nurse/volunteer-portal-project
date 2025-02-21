import React from  'react';

const CategoryCard = ({ title, description, image }) => {
    return (
        <div className="category-card">
            <img src={image} alt={title} />
            <h3>{title}</h3>
            <p>{description}</p>
        </div>
    );
};

export default CategoryCard; 