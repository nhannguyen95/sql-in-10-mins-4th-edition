In addition to using aliases for column names and calculated fields, SQL also enables you to alias table names, reasons:
* To shorten the SQL syntax.
* To enable multiple uses of the same table within a single `SELECT` statement.

---

You can use aliases in the `SELECT` list; the `WHERE`, `ORDER BY` clause, and in any other part of the statement as well.

---

Notice: table aliases are only used during query execution. Unlike column aliases, table aliases are never returned to the client.

---

Self-joins are often used to replace statements using subqueries that retrieve data from the same table as the outer statement.

Although the end result is the same, many DBMSs process joins far more quickly than they do subqueries.

---

**Must read references**:

[A visual explanation of SQL Joins](https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/)

[SQL JOIN and different types of JOINs](https://stackoverflow.com/questions/17946221/sql-join-and-different-types-of-joins)

---

**More on Natural join**: Whenever tables are joined, at least one column will appear in more than one table (the columns being used to create the join).Standard joins (the inner joins that you've learned) return all data, even multiple occurrences of the same columns.

A natural join simple eliminates those multiple occurrences so that only one of each column is returned.

In implementation: you specify the retrieved columns yourself.

---

Summarize some key points:
* Pay careful attention to the type of join being used.
* Make sure to use the correct join condition.
* You may include multiple tables in a join and even have different join types for each. Make sure to test each join separately before testing them together.
