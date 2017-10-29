Most SQL queries contain a single `SELECT` statement that returns data from >= 1 tables.

SQL also enables you to perform multiple queries (multiple `SELECT` statements) and return the results as a single query result set, these combined queries are usually known as _unions_ or _compound queries_.

---

2 scenarios in which you'd use combined queries:
* To return similarly structured data from different tables in a single query.
* To perform multiple queries against a single table returning the data as one query.

---

Theoretically, there should be no difference between using multiple `WHERE` clause conditions or a `UNION` (because most good DBMSs use an internal query optimizer to combine the `SELECT` statements before they are even processed).

---

`UNION` Rules:

* Each query in a `UNION` must contain the same columns, expressions, or aggregate functions (some DBMSs even require that columns be listed in the same order).
* Column datatypes must be compatible: they need not be the exact same type, but they must be of a type that the DBMS can implicitly convert.

---

By default, the `UNION` automatically removes any duplicate rows from the query result set.

You can change this by using `UNION ALL` instead of `UNION`.

`UNION ALL` is the form of `UNION` that accomplishes what cannot be done with `WHERE` clauses. If you want all occurrences of matches for every condition (including duplicates), you must use `UNION ALL` and not `WHERE`.

---

Other `UNION` types:
* `UNION EXCEPT/MINUS`: retrieve the rows that exist in the first table but bot in the second.
* `UNION INTERSECT`: retrieve only the rows that exist in both tables.

In practice, they are rarely used as join can do the same thing.

---

`UNION` is really useful when you need to combine data from multiple tables, even tables with mismatched column names, in which case you can combine `UNION` with aliases to retrieve a single set of results.
