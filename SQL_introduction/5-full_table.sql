-- Print the full description of the table first_table without using DESCRIBE or EXPLAIN
SELECT CONCAT(
    'first_table',
    'CREATE TABLE `first_table` (',
    GROUP_CONCAT(
        CONCAT('`', COLUMN_NAME, '`', ' ', COLUMN_TYPE, ' ', IF(IS_NULLABLE = 'NO', 'NOT NULL', 'DEFAULT NULL'), ' ', IFNULL(COLUMN_DEFAULT, ''), ' ', IF(COLUMN_KEY = 'PRI', 'PRIMARY KEY', '')),
        ',\n'
    ),
    ') ENGINE=', ENGINE, ' DEFAULT CHARSET=', CHARACTER_SET_NAME
)
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table';
