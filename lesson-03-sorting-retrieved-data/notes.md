Relational database design theory states that the sequence of retrieved data cannot be assumed to have significance if ordering was not explicitly.

---

Be sure that `ORDER BY` is the last clause in your `SELECT` statement.

---

It is perfectly legal to sort data by a column that is not retrieved.

---

The default sort order is ascending sort.

---

The `DESC` keyword only applies to the column name that directly precedes it.

If you want to sort descending on multiple columns, be sure each column has its own `DESC` keyword.

---

When you sort data, is it case-sensitivity or case-insensitivity?

The answer depends on how the database is set up:

Most DBMS have _dictionary_ sort order by default: A is the same as a.

Most good DBMSs enable database administrators to change this behavior if needed.

If you do need an alternate sort order, you may not be able to accomplish this with a simple `ORDER BY` clause, instead contact your database administrator.
