-- ---------------------------------
-- Sams Teach Yourself SQL in 10 Minutes
-- Lesson 02: Retrieving data
-- ---------------------------------

-- Retrieving individual columns
SELECT prod_name
FROM Products;

-- Retrieving multiple columns
SELECT prod_id, prod_name, prod_price
FROM Products;

-- Retrieving all columns
SELECT *
FROM Products;

-- Retrieving distinct rows
SELECT DISTINCT vend_id
FROM Products;

-- Can't ne partially DISTINCT
SELECT DISTINCT vend_id, prod_price
FROM Products;

-- Limiting result
-- - Microsoft SQL Server and Microsoft Access
SELECT TOP 5 prod_name
FROM Products;
-- - DB2
SELECT prod_name
FROM Products
FETCH FIRST 5 ROWS ONLY;
-- - Oracle
SELECT prod_name
FROM Products
WHERE ROWNUM <= 5;
-- - MySQL, MariaDB, PostgreSQL, SQLite
SELECT prod_name
FROM Products
LIMIT 5;
-- - To get the next five rows: specify where to start and
-- - number of rows to retrieve
SELECT prod_name
FROM Products
LIMIT 5 OFFSET 2;
-- - Shorthand
SELECT prod_name
FROM Products
LIMIT 2, 5;
