Views are virtual tables. Unlike tables that contain data, views simply contain queries that dynamically retrieve data when used.

---

Why use views:
* Hide complex SQL.
* To reuse SQL statements.
* To simplify complex SQL operations.
* To expose parts of a table instead of complete tables.
* To secure data (Users can be given access to specific subsets of tables instead of to entire tables).
* To change data formatting and representation (Views can return data formatted and presented differently from their underlying tables).

---

For the most part, after views are created, they can be used in the same way as tables (you can perform `SELECT`, filter, sort, join, add, update data..).

---

Views contain no date themselves, they data they return is retrieved from other tables.

That is the reason why if you create complex views, the performance is dramatically degraded.

---

Some of the most common rules and restrictions on view creation and usage:
* Views must be uniquely named.
* No limit to the number of views that can be created.
* To create views, you must have security access.
* Views can be nested (a view many built using a query that retrieves data from another view), nested view may seriously degrade query performance.
* Many DBMSs prohibit the use of `ORDER BY` clause in view queries.
* Some DBMSs require that every column returned be named (`AS`).
* Views cannot be indexed, nor can they have triggers or default values associated with them.
* Some DBMSs treat views as read-only queries (you can retrieve data from views but not write data back to the underlying tables).
* Some DBMSs allow you to create views that do not allow rows to be to be inserted or updated if that insertion or updated will cause that row to no longer be part of the view.

---

Remove view: `DROP VIEW viewname`

---

**Creating Reusable Views**: it's a good idea to create views that are not tied to specific data.

---

If a `WHERE` clause is used when retrieving data from the view, the two sets of clauses (the one in the view and one passed to it) will be combined automatically.
