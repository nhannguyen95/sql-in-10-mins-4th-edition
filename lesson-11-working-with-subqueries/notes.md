All the `SELECT` statements we have seen thus far are simple queries: single statements retrieving data from individual database tables.

---

_Subqueries_: queries that are embedded into other queries.

---

**Subquery `SELECT` statements can only retrieve a single column. Attempting to retrieve multiple columns will return an error.**

---

If the subquery is the calculated field, the subquery is executed after the outer query and applied on every row retrieved by the outer query.

---

The most common uses for subqueries are in `WHERE` clause `IN` operators and for populating calculated columns.

---

It is often not the most efficient way to perform this type of data retrieval.
