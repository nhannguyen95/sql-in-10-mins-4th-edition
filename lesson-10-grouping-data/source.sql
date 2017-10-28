-- Creating groups
-- The number of products offered by each vendor
SELECT vend_id, COUNT(*) AS num_prods
FROM Products
GROUP BY vend_id;

-- Filtering groups
-- A list of all customers who have made at least 2 orders
SELECT cust_id, COUNT(*) AS orders
FROM Orders
GROUP BY cust_id
HAVING COUNT(*) >= 2;

-- WHERE and HAVING
-- All vendors who have >= 2 products priced at >= 4
SELECT vend_id, COUNT(*) AS num_prods
FROM Products
WHERE prod_price >= 4
GROUP BY vend_id
HAVING COUNT(*) >= 2;

-- GROUP BY without ORDER BY
-- Retrieves the order number and number of items ordered for
-- all orders containing >= 3 items
SELECT order_num, COUNT(*) AS items
FROM OrderItems
GROUP BY order_num
HAVING COUNT(*) >= 3;

-- Sort the output by number of items ordered
SELECT order_num, COUNT(*) AS items
FROM OrderItems
GROUP BY order_num
HAVING COUNT(*) >= 3
ORDER BY items, order_num;
