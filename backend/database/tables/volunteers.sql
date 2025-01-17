USE volunteer_portal_db;

CREATE TABLE volunteers (
    volunteer_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(200),
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(20),
    preferred_language SET('English', 'Spanish', 'Portuguese', 'Other'),
    category_id INT, -- Foreign Key referencing service_categories
    time_availability ENUM('1–3', '4–6', '7+'),
    location_preferences JSON,
    consent_to_data BOOLEAN,
    FOREIGN KEY (category_id) REFERENCES service_categories(category_id)
);
