-- Population examples to come back to 

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
