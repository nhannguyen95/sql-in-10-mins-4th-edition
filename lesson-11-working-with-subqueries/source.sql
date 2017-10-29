-- Filtering by Subqueries
-- List of all the customers who ordered item RGAN01.
-- 
SELECT cust_name, cust_contact
FROM Customers
WHERE cust_id IN(SELECT cust_id
                 FROM Orders
                 WHERE order_num IN(SELECT order_num
                                    FROM OrderItems
                                    WHERE prod_id = 'RGAN01'));

-- Using Subqueries as Calculated Fields
-- Display the total number of orders placed by a single
-- customer in Customers table
SELECT COUNT(*) AS orders
FROM Orders
WHERE cust_id = '1000000001';
-- Display the total number of orders placed by a every
-- customer in Customers table
SELECT cust_name,
       cust_state,
       (SELECT COUNT(*)
        FROM Orders
        WHERE Orders.cust_id = Customers.cust_id) AS orders
FROM Customers
ORDER BY cust_name;
