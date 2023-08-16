-- a script that prints the full description of the table first_table from the database hbtn_0c_0
SHOW CREATE TABLE first_table\G
       Table: first_table
Create Table: CREATE TABLE first_table (
  id int NOT NULL AUTO_INCREMENT,
  s char(60) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
