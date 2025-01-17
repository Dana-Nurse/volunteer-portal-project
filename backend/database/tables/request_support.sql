USE volunteer_portal_db;

CREATE TABLE request_support (
    request_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(200),
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(20),
    support_type ENUM('volunteer_assistance', 'resource_provision', 'mentorship', 'event_support', 'not_sure'),
    category_id INT, -- Foreign Key referencing service_categories
    description_of_need TEXT,
	location JSON,
    consent_to_data BOOLEAN,
    FOREIGN KEY (category_id) REFERENCES service_categories(category_id)
);
