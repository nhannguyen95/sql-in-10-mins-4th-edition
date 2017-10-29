-- Using UNION
-- Reports all customers in Illinois, Indiana, Michigan
-- along with custormers work in Fun4All
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

-- Using UNION ALL to not remove the duplicate rows
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION ALL
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

-- Another solution
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
   OR cust_name = 'Fun4All';

-- Sorting combined query results
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name - 'Fun4All'
ORDER BY cust_name, cust_contact; -- put ORDER BY after the final SELECT statement
