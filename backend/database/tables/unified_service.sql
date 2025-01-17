USE volunteer_portal_db;

CREATE TABLE unified_service_participation (
    id INT PRIMARY KEY AUTO_INCREMENT,             -- Auto-incremented primary key
    entity_type ENUM('volunteer', 'corporate_partner', 'request_support') NOT NULL,  -- Type of entity
    entity_id INT NOT NULL,                        -- ID of the entity (depends on entity_type)
    category_id INT NOT NULL,                      -- The service category ID
    FOREIGN KEY (category_id) REFERENCES service_categories(category_id),  -- Foreign Key to service_categories table
    
    -- Check constraint to ensure entity_id references the correct table (handled at application level)
    CHECK (entity_type = 'volunteer' AND entity_id > 0 OR
           entity_type = 'corporate_partner' AND entity_id > 0 OR
           entity_type = 'request_support' AND entity_id > 0)
);
