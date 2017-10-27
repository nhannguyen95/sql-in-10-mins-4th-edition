-- Concatenating Fields
SELECT Concat(vend_name, ' (', vend_country, ')')
FROM Vendors
ORDER BY vend_name;

-- Trim the padding spaces
SELECT Concat(RTRIM(vend_name), ' (', RTRIM(vend_country), ')')
FROM Vendors
ORDER BY vend_name;

-- Using aliases
SELECT Concat(RTRIM(vend_name), ' (', RTRIM(vend_country), ')')
       AS vend_title
FROM Vendors
ORDER BY vend_name;

-- Calculation
SELECT prod_id,
       quantity,
       item_price,
       quantity * item_price AS expanded_price
FROM OrderItems
WHERE order_num = 20008;
