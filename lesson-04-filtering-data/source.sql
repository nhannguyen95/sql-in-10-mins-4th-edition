-- Checking against a single value
SELECT prod_name, prod_price
FROM products
WHERE prod_price = 3.49;

--
SELECT prod_name, prod_price
FROM products
WHERE prod_price < 10;

-- Checking for nonmatches
SELECT vend_id, prod_name
FROM Products
WHERE vend_id <> 'DLL01';

-- Checking for a range of values
SELECT prod_name, prod_price
FROM Products
WHERE prod_price BETWEEN 5 AND 10;

-- Checking for no value
SELECT cust_name
FROM Customers
WHERE cust_email IS NULL;
