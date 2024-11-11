-- Create the database
CREATE DATABASE IF NOT EXISTS volunteer_portal;

-- Use the newly created database
USE volunteer_portal;


-- Table to store volunteer details including contact info, join date, and special notes.
-- The 'notes' column is for any additional information about the volunteer (e.g., availability, preferences).
-- This helps maintain a record of any specific details that could be relevant for volunteer coordination.
CREATE TABLE volunteers (
	volunteer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL CHECK (email LIKE '%@%'),
    phone_number VARCHAR(15) NOT NULL,
    join_date DATE NOT NULL,
    notes VARCHAR(400)
);


-- Table to store skills for volunteers, categorised by service area (e.g., children_in_care, elderly).
-- This table allows us to define what skills volunteers may have and associate them with particular categories.
-- By defining the skills in advance, we make it easier to match volunteers with relevant roles.
CREATE TABLE skills (
    skill_id INT AUTO_INCREMENT PRIMARY KEY,
    skill_name VARCHAR(100) UNIQUE NOT NULL,
    category ENUM('different_abilities', 'elderly', 'ex_prisoners', 'children_in_care', 'hiv_aids', 'other') NOT NULL
);

-- Populating the skills table with predefined volunteer skill sets.
-- These skills are associated with different categories of volunteer services, such as elderly care or children in care.
-- By inserting these skills here, we ensure that volunteers can easily be matched to roles based on their skillset.
INSERT INTO skills (skill_name, category) VALUES
    ('Personal Support', 'different_abilities'),
    ('Advocacy Events', 'different_abilities'),
    ('Public Surveys', 'different_abilities'),
    ('Petitions & Campaigns', 'different_abilities'),
    ('Other - Different Abilities', 'different_abilities'),
    
    ('Companionship', 'elderly'),
    ('Tech Support', 'elderly'),
    ('Resource Assistance', 'elderly'),
    ('Other - Elderly', 'elderly'),
    
    ('Job Skills Training', 'ex_prisoners'),
    ('Interview Preparation', 'ex_prisoners'),
    ('Work Experience Liaison', 'ex_prisoners'),
    ('CV Writing Assistance', 'ex_prisoners'),
    ('Application Help', 'ex_prisoners'),
    ('Other - Ex-Prisoners', 'ex_prisoners'),
    
    ('Mentorship', 'children_in_care'),
    ('Tutoring', 'children_in_care'),
    ('Recreational Activities', 'children_in_care'),
    ('Other - Children in Care', 'children_in_care'),
    
    ('Health & Wellness Programs', 'hiv_aids'),
    ('Community Awareness', 'hiv_aids'),
    ('Home Assistance & Companionship', 'hiv_aids'),
    ('Other - HIV/AIDS', 'hiv_aids'),

    ('Other - General', 'other');



-- Junction table to establish a many-to-many relationship between volunteers and their skills.
-- A volunteer can have multiple skills, and each skill can be associated with multiple volunteers.
-- This table helps associate each volunteer with the skills they possess, facilitating volunteer matching based on the skills required for particular roles.
CREATE TABLE volunteer_skills (
    volunteer_id INT,
    skill_id INT,
    PRIMARY KEY (volunteer_id, skill_id),
    FOREIGN KEY (volunteer_id) REFERENCES volunteers(volunteer_id),
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id)
);



-- Table to store service categories offered to volunteers (e.g., elderly care, ex-prisoners support, etc.).
-- This table helps organise the different services available to volunteers, making it easier to assign volunteers to the services that align with their interests and skills.
CREATE TABLE services (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(100) UNIQUE NOT NULL,
    description TEXT
);



-- Table to store event details related to different services.
-- Each event corresponds to a specific service and will be used to track volunteer participation in various events.
-- By linking events to services, we can more easily manage volunteers and ensure they are attending events that match their skills and service categories.
CREATE TABLE events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    service_id INT,
    event_name VARCHAR(100) NOT NULL,
    event_date DATE NOT NULL,
    location VARCHAR(100) NOT NULL,
    description TEXT,
    FOREIGN KEY (service_id) REFERENCES services(service_id)
);




-- Junction table to establish a many-to-many relationship between volunteers and events.
-- A volunteer can attend multiple events, and each event can have multiple volunteers.
-- This table tracks which volunteers are attending which events, making it easy to manage volunteer attendance and participation.
CREATE TABLE volunteer_events (
    volunteer_id INT,
    event_id INT,
    PRIMARY KEY (volunteer_id, event_id),
    FOREIGN KEY (volunteer_id) REFERENCES volunteers(volunteer_id),
    FOREIGN KEY (event_id) REFERENCES events(event_id)
);
