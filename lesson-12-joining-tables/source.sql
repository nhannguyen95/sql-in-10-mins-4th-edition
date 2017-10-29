-- Cartesian product
SELECT vend_name, prod_name, prod_price
FROM Vendors, Products;

-- Creating a equality join
SELECT vend_name, prod_name, prod_price
FROM Vendors, Products
WHERE Vendors.vend_id = Products.vend_id;

-- Inner join (more: this is natural join because the duplicate
-- columns is eliminated by specifing which columns are retrieved)
SELECT vend_name, prod_name, prod_price
FROM Vendors INNER JOIN Products
ON Vendors.vend_id = Products.vend_id;

-- Joining multiple tables
-- Displays the items in order number 20007
SELECT prod_name, vend_name, prod_price, quantity
FROM OrderItems, Products, Vendors
WHERE Products.vend_id = Vendors.vend_id
  AND OrderItems.prod_id = Products.prod_id
  AND order_num = 20007;
-- Returns a list of customers who ordered product RGAN01
SELECT cust_name, cust_contact
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id
  AND Orders.order_num = OrderItems.order_num
  AND OrderItems.prod_id = 'RGAN01';
