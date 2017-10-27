Calculated fields don't actually exist in database tables. Rather, a calculated field is created on-the-fly within a SQL `SELECT` statement.

---

Field essentially means the same thing as column.

---

For concatenation support:
* Access SQL Server use +
* DB2, Oracle, PostgreSQL ,SQLite, Open Office Base use two pipes.
* MySQL, MariaDB use (,,)

---

`LTRIM()`, `RTRIM()`, `TRIM()`

---

In `SELECT` statement, the `FROM` clause may be omitted to simply access and work with expressions:

```
SELECT 3 * 2;
SELECT TRIM(' abc ');
SELECT Now();
```
