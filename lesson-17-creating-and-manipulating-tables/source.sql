CREATE TABLE Products
(
  prod_id    CHAR(10)      NOT NULL,
  vend_id    CHAR(10)      NOT NULL,
  prod_name  CHAR(254)     NOT NULL,
  prod_price DECIMAL(8,2)  NOT NULL,
  prod_desc  TEXT          NULL
);

-- NULL is default setting
CREATE TABLE Vendors
(
  vend_id      CHAR(10) NOT NULL,
  vend_name    CHAR(50) NOT NULL,
  vend_address CHAR(50),
  vend_city    CHAR(50),
  vend_state   CHAR(5),
  vend_zip     CHAR(10),
  vend_country CHAR(50)
)

-- Specifying default value
CREATE TABLE OrderItems
(
  order_num  INTEGER       NOT NULL,
  order_item INTEGER       NOT NULL,
  prod_id    CHAR(10)      NOT NULL,
  quantity   INTEGER       NOT NULL DEFAULT 1,
  item_price DECIMAL(8, 2) NOT NULL
)

-- Adding column to existing table
ALTER TABLE Vendors
ADD vend_phone CHAR(20);

-- Dropping column
ALTER TABLE Vendors
DROP COLUMN vend_phone;

-- Deleting tables
DROP TABLE CustCopy;
