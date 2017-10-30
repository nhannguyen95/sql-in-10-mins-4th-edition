Insert can be used in several ways:
* Inserting a single complete row.
* Inserting a single partial row.
* Inserting the results of a query.

---

Use of the `INSERT` statement might require special security privileges in client-server DBMSs.

---

**Always use a columns list**

---

**Inserting partial rows:** Using column list, you can also omit columns, this means you only provide values for some columns, but not for others.

---

You may omit columns from an `INSERT` operation if the table definition so allows. One of the following conditions must exist:
* The column is defined as allowing `NULL` values (no value at all).
* A default value is specified in the table definition. This means the default value will be used if no value is specified.

---

`INSERT` can be used to insert the result of a `SELECT` statement into a table, this is known as `INSERT SELECT`, and the `SELECT` statement can include a `WHERE` clause to filter the data to be inserted.

---

To copy the contents of a table into a brand new table (one that is created on-the-fly), you can use the `SELECT INTO` statement.

`SELECT INTO` copies data into a new table (and depending on the DBMS being used, can overwrite the table if it already exists).

---

`INSERT SELECT`: imports data.

`SELECT INTO`: exports data.

---

Some thing to notice with `SELECT INTO`:
* Any `SELECT` options and clauses may be used including `WHERE` and `GROUP BY`.
* Joins may be used to insert data from multiple tables.
* Data may only be inserted into a single table regardless of how many tables the data was retrieved from.

---

`SELECT INTO` is a great way to make copies of tables before experimenting with new SQL statements.
