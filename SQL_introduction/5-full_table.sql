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
        ', PRIMARY KEY (`id`)) ENGINE=', 
        ENGINE, 
        ' DEFAULT CHARSET=', 
        CHARACTER_SET_NAME, 
        ' COLLATE=', 
        COLLATION_NAME
    ) AS create_table_statement
FROM (
    SELECT 
        TABLE_NAME, 
        COLUMN_NAME, 
        COLUMN_TYPE, 
        IS_NULLABLE, 
        COLUMN_DEFAULT, 
        EXTRA,
        ENGINE,
        CHARACTER_SET_NAME,
        COLLATION_NAME
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table'
) AS tbl_info;
