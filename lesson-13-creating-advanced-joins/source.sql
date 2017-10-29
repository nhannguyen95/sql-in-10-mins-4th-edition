-- Using table aliases
SELECT cust_name, cust_contact
FROM Customers AS C, Orders AS O, OrderItems AS IO
WHERE C.cust_id = O.cust_id
  AND OI.order_num = O.order_num
  AND prod_id = 'RGAN01';

-- All the customer contacts who work for the same company
-- for which Jim Jones works
-- Using subqueries
SELECT cust_id, cust_name, cust_contact
FROM Customers
WHERE cust_name = (SELECT cust_name  -- or IN(
                   FROM Customers
                   WHERE cust_contact = 'Jim Jones');
-- Using self join
SELECT c1.cust_id, c1.cust_name, c1.cust_contact
FROM Customers AS c1, Customers AS c2
WHERE c1.cust_name = c2.cust_name
  AND c2.cust_contact = 'Jim Jones';

-- Natural join implementation: you specify which columns are retrieved to the result
SELECT C.*, O.order_num, O.order_date, OI.prod_id, OI.quantity, OI.item_price
FROM Customers AS C, Orders AS O, OrderItems AS OI
WHERE C.cust_id = O.cust_id
  AND OI.order_num = O.order_num
  AND prod_id = 'RGAN01';

-- Using Inner join to list all customers and their orders
SELECT Customers.cust_id, Orders.order_num
FROM Customers INNER JOIN Orders
ON Customers.cust_id = Orders.cust_id;

-- Using Outer join to list all customers and their orders
-- (including those who have placed no orders)
SELECT Customers.cust_id, Orders.order_num
FROM Customers LEFT OUTER JOIN Orders
ON Customers.cust_id = Orders.cust_id;

-- Using Joins with Aggregate functions
-- Retrieves a list of all customers and the number of orders
-- that each has placed.
SELECT Customers.cust_id,
       COUNT(Orders.order_num) AS num_ord
FROM Customers INNER JOIN Orders
ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id;

-- Using Left Outer Join with Aggregate Functions
-- Ditto, including customers who have not placed any order
SELECT Customers.cust_id,
       COUNT(Orders.order_num) AS num_ord
FROM Customers LEFT OUTER JOIN Orders
ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id;
