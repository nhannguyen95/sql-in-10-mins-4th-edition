SQL (Structured Query Language) is a language used to interact with databases.

---

Database is a container (usually a file or set of file) to store organized data.

---

People often use the term _database_ to refer to the database software they are running.

This is incorrect, Database software is actually called the _Database Management System_ (or DBMS).

The database is the container created and manipulated via the DBMS.

---

A _table_ is a structured file that can store data of a specific type.

---

_Schema_ is the information about database and table layout and properties.

---

When you break up data, the level of granularity is up to you and your specific requirements.

---

_Primary key_ is a column (or set of columns) whose values uniquely identify every row in a table.

**Always define primary keys** so that future data manipulation is possible and manageable (although it's not required).

---

A column in a table can be established as the primary key if:
* No two rows can have the same primary key value.
* Every row must have a primary key value. (Primary key columns may not allow NULL values.)
* Values in primary key columns should never be modified or updated.
* **Primary key values should never be reused.** (If a row is deleted from the table, its primary key may not be assigned to any new rows in the future.)

---

When multiple columns are used, the rules listed above must apply to all columns.

The values of all columns together must be unique (**individual columns need not have unique values)**.
