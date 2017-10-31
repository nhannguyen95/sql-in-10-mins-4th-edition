-- Define primary key
CREATE TABLE Vendors
(
  vend_id      CHAR(10) NOT NULL PRIMARY KEY,
  vend_name    CHAR(50) NOT NULL,
  vend_address CHAR(50) NULL,
  vend_city    CHAR(50) NULL,
  vend_state   CHAR(5)  NULL,
  vend_zip     CHAR(10) NULL,
  vend_country CHAR(50) NULL
);

-- Another solution
ALTER TABLE Vendors
ADD CONSTRAINT PRIMARY KEY(vend_id);

-- Define foreign key
CREATE TABLE Orders
(
  order_num  INTEGER  NOT NULL PRIMARY KEY,
  order_date DATETIME NOT NULL,
  cust_id    CHAR(10) NOT NULL REFERENCES Customers(cust_id)
);

-- Another solution
ALTER TABLE Orders
ADD CONSTRAINT
FOREIGN KEY (cust_id) REFERENCES Customers(cust_id);

-- Using Check Constraints to ensure all items have a quantity
-- greater than 0
CREATE TABLE OrderItems
(
  order_num  INTEGER  NOT NULL,
  order_item INTEGER  NOT NULL,
  prod_id    CHAR(10) NOT NULL,
  quantity   INTEGER  NOT NULL CHECK(quantity > 0), -- this is parsed but doesn't work on MySQL
  item_price MONEY    NOT NULL
);

-- Or using Check Constraints with ALTER TABLE
-- ALTER TABLE tableName
ADD CONSTRAINT CHECK (gender LIKE '[MF]');

-- Create a simple index on the Products table's
-- product name column
CREATE INDEX prod_name_ind
ON Products(prod_name);

-- Create a trigger that converts the cust_state column
-- in the Customers table to uppercase on all UPDATE operations.
CREATE TRIGGER customer_state
BEFORE UPDATE ON Customers
FOR EACH ROW SET NEW.cust_state = Upper(NEW.cust_state);

-- To drop a trigger
DROP TRIGGER customer_state;
