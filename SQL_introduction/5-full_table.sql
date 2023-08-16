-- a script that prints the full description of the table first_table from the database hbtn_0c_0
SELECT 
    CONCAT(
        'CREATE TABLE `', 
        TABLE_NAME, 
        '` (', 
        GROUP_CONCAT(
            CONCAT(
                '`', COLUMN_NAME, '` ', 
                COLUMN_TYPE, 
                IF(IS_NULLABLE = 'NO', ' NOT NULL', ''), 
                IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''), 
                IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', '')
            ) SEPARATOR ', '
        ), 
        ', PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'
    ) AS create_table_statement
FROM (
    SELECT 
        TABLE_NAME, 
        COLUMN_NAME, 
        COLUMN_TYPE, 
        IS_NULLABLE, 
        COLUMN_DEFAULT, 
        EXTRA
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table'
) AS tbl_info;
