-- The Percent Sign ( % ) Wildcard
-- Find all products that started with the word Fish
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE 'Fish%';

--
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '%bean bag%';

--
SELECT prod_name
FROM Products
WHERE prod_name LIKE 'F%y';

-- The Underscore (_) Wildcard
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '__ inch teddy bear'

-- The Brackets ([]) Wildcard
-- Find all contacts whose names begin with the letter J or M
SELECT cust_contact
FROM Customers
WHERE cust_contact LIKE '[JM]%'
ORDER BY cust_contact;
