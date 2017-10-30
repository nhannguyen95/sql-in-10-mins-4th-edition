Generally 2 ways to create database tables:
* DBMS tools (actually SQL statements).
* SQL statements.

---

`CREATE TABLE` components:
* Name of new table after the keyword `CREATE TABLE`.
* Name and definition of table columns.
* Specifying table location.

---

If the name of new table already exists in the database, there will be error.

---

In most DBMSs, `NULL` is default setting.

---

**Only columns that do not allow `NULL` values can be used in primary keys.**

---

`NULL` is not empty string.

---

Tip: Using `DEFAULT` instead of `NULL` values (especially in columns that will be used in calculations or date groupings).

---

To update table definitions using `ALTER TABLE`, some points to consider:
* Ideally, tables should never be altered after they contain data.
* All DBMSs allow you to add columns to existing tables, although some restrict the datatypes that may be added.
* Many DBMSs do not allow you to remove or change columns in tables.
* Most DBMSs allow you to rename columns.
* Many DBMSs restrict the kinds of changes you can make on columns that are populated and enforce fewer restrictions on unpopulated columns.

---

To use `ALTER TABLE`, you need to specify:
* The name of the table to be altered.
* The list of changes to be made.

---

Complex table structure changes usually require a manual move process involving these steps:
* Create a new table with new column layout.
* Use `INSERT SELECT` to copy date from old table to the new one.
* Verify the new table contains the desired data.
* Remove the old table (or delete if you are brave).
* Rename the new table with the name previously used by the old one.
* Recreate any triggers, stored procedures, indexes, foreign keys...
