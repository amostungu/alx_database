-- Create the table second_table if it doesn't exist
CREATE TABLE IF NOT EXISTS second_table (
    id INT,
    name VARCHAR(256),
    score INT
);

-- Insert records into the second_table (without SELECT or SHOW statements)
INSERT INTO second_table (id, name, score) SELECT * FROM (SELECT 1, 'John', 10) AS tmp WHERE NOT EXISTS (SELECT id FROM second_table WHERE id = 1) LIMIT 1;
INSERT INTO second_table (id, name, score) SELECT * FROM (SELECT 2, 'Alex', 3) AS tmp WHERE NOT EXISTS (SELECT id FROM second_table WHERE id = 2) LIMIT 1;
INSERT INTO second_table (id, name, score) SELECT * FROM (SELECT 3, 'Bob', 14) AS tmp WHERE NOT EXISTS (SELECT id FROM second_table WHERE id = 3) LIMIT 1;
INSERT INTO second_table (id, name, score) SELECT * FROM (SELECT 4, 'George', 8) AS tmp WHERE NOT EXISTS (SELECT id FROM second_table WHERE id = 4) LIMIT 1;

