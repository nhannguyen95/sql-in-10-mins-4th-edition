-- Sorting data
SELECT prod_name
FROM Products
ORDER BY prod_name;

-- Sorting by multiple columns
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price, prod_name;

-- Sorting by column position
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY 2, 3;  -- the order in select list: first sort by prod_price and then prod_name

-- Specifying sort direction
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price DESC;
--- - Multiple columns
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price DESC, prod_name;
