-- UPPER function
SELECT vend_name, UPPER(vend_name) AS vend_name_upcase
FROM Vendors
ORDER BY vend_name;

-- SOUNDEX used when the data has typo
SELECT cust_name, cust_contact
FROM Customers
WHERE SOUNDEX(cust_contact) = SOUNDEX('Michael Green');

-- Date and time manipulation function
-- - Retrieve the list of order made in 2012
SELECT order_num
FROM Orders
WHERE YEAR(order_date) = 2012;
