One of SQL's most powerful features is the capability to join tables on-the-fly within data retrieval queries.

Joins are one of the most important operations that you can perform using SQL `SELECT`.

A good understanding of joins and join syntax is an extremely important part of learning SQL.

---

Having multiple occurrences of the same data is never a good thing, and that principle is the basis for relational database design.

---

A join is a mechanism used to associate tables within a `SELECT` statement.

Using a special syntax, multiple tables can be joined so that **a single set** of output is returned.

---

Cartesian Product (or Cross Product) sometimes referred to as a **CROSS JOIN**.

Cartesian Product pairs every row in the first table with every row in the second table.

Join acts as a filter to only include rows that match the specified filter condition (the join condition).

---

SQL imposes no limit to the number of tables that may be joined in a `SELECT` statement.

The basic rules for creating the join remain the same: first list all the tables (`FROM`), then define the relationship between each (`WHERE`).

---

DBMSs process joins at run-time relating each table as specified. This process can become very resource intensive so be careful not to join tables unnecessarily. The more tables you join the more performance will degrade.

---

In case of joining multiple tables, you can imagine that the output will only have 1 (broad table) that is joined in the order the join conditions written in the `WHERE` clause.

---

There is often more than one way to perform any given SQL operation. And there is rarely a definitive right or wrong way.

Performance can be affected by the type of operation, the DBMS being used, the amount of data in the tables, whether or not indexes and keys are present, and a whole slew of other criteria.
