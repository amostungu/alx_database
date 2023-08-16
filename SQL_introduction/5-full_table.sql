-- a script that prints the full description of the table first_table from the database hbtn_0c_0
first_tableCREATETABLE first_table( id int NOT NULL AUTO_INCREMENT, name varchar(128) DEFAULT NULL, c char(1) DEFAULT NULL, created_at date DEFAULT NULL, PRIMARY KEY (id) )ENGINE=InnoDBDEFAULTCHARSET=utf8mb4COLLATE=utf8mb4_0900_ai_ci
