-- Creating a view
-- This view joins 3 tables to return a list of all
-- customers who have ordered any product
CREATE VIEW ProductCustomers AS
SELECT cust_name, cust_contact, prod_id
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id
  AND OrderItems.order_num = Orders.order_num;

-- Listing every customer who ordered anything
SELECT cust_name, cust_contact
FROM ProductCustomers
WHERE prod_id = 'RGAN01';

-- Using view to reformat retrieved data
CREATE VIEW VendorLocations AS
SELECT Concat(RTRIM(vend_name), ' (', RTRIM(vend_country), ')')
       AS vend_title
FROM Vendors;
-- Usage:
SELECT * FROM VendorLocations;

-- Views are also useful for applying common WHERE clauses
CREATE VIEW CustomerEMailList AS
SELECT cust_id, cust_name, cust_email
FROM Customers
WHERE cust_email IS NOT NULL;

-- Using with calculated fields
CREATE VIEW OrderItemsExpanded AS
SELECT order_num,
       prod_id,
       quantity,
       item_price,
       quantity * item_price AS expanded_price
FROM OrderItems;
-- Usage:
SELECT * 
FROM OrderItemsExpanded
WHERE order_num = 20008;
