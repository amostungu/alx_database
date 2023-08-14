-- a script that creates the table unique_id on your MySQL server
CREATE TABLE IF NOT EXISTS unique_id (id INT NOT NULL DEFAULT 1 PRIMARY KEY, name VARCHAR(256), UNIQUE KEY unique_id (id));
