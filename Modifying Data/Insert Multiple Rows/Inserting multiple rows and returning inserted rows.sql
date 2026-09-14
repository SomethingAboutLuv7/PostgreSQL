INSERT INTO contacts (first_name, last_name, email)
VALUES
    ('Alice', 'Johnson', 'alice.johnson@example.com'),
    ('Charlie', 'Brown', 'charlie.brown@example.com')
RETURNING *;