-- Updating email for customer 1000000005
UPDATE Customers
SET cust_email = 'kim@thetoystore.com'
WHERE cust_id = '1000000005';

-- Update multiple columns
UPDATE Customers
SET cust_email = 'Sam Roberts',
    cust_email = 'sam@toyland.com'
WHERE cust_id = '1000000006';

-- Delete a column's value (set it to NULL)
-- (Assuming the table is defined to allow NULL values)
UPDATE Customers
SET cust_email = NULL
WHERE cust_id = '1000000005';

-- Deleting a single row from Customers table
DELETE FROM Customers
WHERE cust_id = '1000000006';
