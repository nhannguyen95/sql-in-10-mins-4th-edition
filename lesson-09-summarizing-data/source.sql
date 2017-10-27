-- The AVG() function
SELECT AVG(prod_price) AS avg_price
FROM Products;
-- - AVG of specific columns or rows
SELECT AVG(prod_price) AS avg_price
FROM Products
WHERE vend_id = 'DLL01';

-- The COUNT() function
-- - Count the number of rows in a table
SELECT COUNT(*) AS num_cust
FROM Customers;
-- - Count the customers with an email address
SELECT COUNT(cust_email) AS num_cust
FROM Customers;

-- The MAX() function
SELECT MAX(prod_price) AS max_price
FROM Products;

-- The MIN() function
SELECT MIN(prod_price) AS min_price
FROM Products;

-- The SUM() function
SELECT SUM(quantity) AS items_ordered
FROM OrderItems
WHERE order_num = 20005;
-- - SUM can also be used to total calculated values
SELECT SUM(item_price * quantity) AS total_price
FROM OrderItems
WHERE order_num = 20005;

-- Aggregates on distinct values
SELECT AVG(DISTINCT prod_price) AS avg_price 
FROM Products
WHERE vend_id = 'DLL01';
