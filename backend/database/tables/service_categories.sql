USE volunteer_portal_db;

CREATE TABLE service_categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255),
    description TEXT
);