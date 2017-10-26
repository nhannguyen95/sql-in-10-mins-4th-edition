To use `SELECT` to retrieve table data you must, at minimum, specify two pieces of information:
* **what** you want to select.
* from **where** you want to select it.

---

If you try the `SELECT` query, the result (if they're not explicitly sorted) can be returned in no order of any significance.

---

SQL statements are **case-insensitive**.

However, the names of tables, columns, and values may not be (depends on your DBMS and how it is configured).

---

When a wildcard ( * ) is specified, the column order will typically (but not always) be the physical order in which the columns appear in the table definition.

---

You should consider using wildcard as it usually slows down the performance (of the retrieval and your application).

---

The `DISTINCT` keyword applies to all columns, not just the one it precedes.

---

The first row retrieved is row 0, not row 1. As such, `LIMIT 1 OFFSET 1` will retrieve the 2nd row.

---

While SQL is usually quite consistent across implementations, you can't rely on it always being so.
