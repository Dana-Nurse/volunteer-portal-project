USE volunteer_portal_db;

CREATE TABLE skills (
    skill_id INT PRIMARY KEY AUTO_INCREMENT,
    skill_name VARCHAR(255),
    description TEXT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES service_categories(category_id)
);
