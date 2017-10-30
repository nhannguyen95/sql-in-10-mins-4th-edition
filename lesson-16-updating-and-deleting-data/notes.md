`UPDATE` can be used in 2 ways:
* To update specific rows in a table.
* To update all rows in a table.

---

Use of `UPDATE` might require special security privileges in client-server DBMSs.

---

The basic format of `UPDATE` statement is made up 3 parts:
* The table to be updated.
* The column names and their new values.
* The filter condition that determines which rows should be updated (using `WHERE` clause).

**Without `WHERE` clause, the DBMS would update all the rows in the specified table**.

---

`DELETE` can be used in 2 ways:
* To delete specific rows from a table (with `WHERE`).
* To delete all rows from a table (without `WHERE`).

---

Use of `DELETE` might require special security privileges in client-server DBMSs.

---

Defining (Using) foreign keys allows DBMS to prevent the deletion of rows that are needed for a relationship.

---

In some SQL implementations, `DELETE` = `DELETE FROM`. However, you should always use `FROM` in practice so that your code is portable.

---

`DELETE` statement deletes rows from tables, even all rows from tables. **But it never deletes the table itself.**

---

If you really want to delete all rows from a table, use `TRUNCATE TABLE` instead of `DELETE`. It much faster because date changes are not logged.

---

Some tips:
* Before using `WHERE` clause with `UPDATE` or `DELETE`, first test it with `SELECT` to make sure it is filtering the right records.
* SQL has no Undo button, be careful using `UPDATE` and `DELETE`.
