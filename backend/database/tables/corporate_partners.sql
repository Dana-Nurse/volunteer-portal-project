USE volunteer_portal_db;

CREATE TABLE corporate_partners (
    corporate_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(20),
    preferred_language SET('English', 'Spanish', 'Portuguese', 'Other'),
    category_id INT, -- Foreign Key referencing service_categories
    location JSON,
    time_commitment ENUM('Short-term', 'Medium-term', 'Long-term'),
    consent_to_data BOOLEAN,
    FOREIGN KEY (category_id) REFERENCES service_categories(category_id)
);


