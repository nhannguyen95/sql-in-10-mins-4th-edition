The `GROUP BY` clause instructs the DBMS to group the data and then perform the aggregate on each group rather than on the entire result set.

---

Before you use `GROUP BY`, some important rules you need to know:
* `GROUP BY` clauses can contain as many columns as you want. This enables you to nest groups, providing you with more granular control over how data is grouped.
* If you have nested groups in your `GROUP BY` clause, data is summarized at the last specified group. In other words, all the columns specified are evaluated together when grouping is established (so you won't get data back for each individual column level).
* Every column listed in `GROUP BY` **must be a retrieved column** or a valid expression (but not an aggregate function). If an expression is used in the `SELECT`, that same expression must be specified in `GROUP BY`. Aliases cannot be used.
* Most SQL implementations do not allow `GROUP BY` columns with variable length datatypes (such as text or memo fields).
* Aside from the aggregate calculations statements, every column in your `SELECT` statement must be present in the `GROUP BY` clause.
* If the grouping column contains a row with a `NULL` value, `NULL` will be returned as a group. If there are multiple rows with `NULL` values, they'll all be grouped together.
* The `GROUP BY` clause must come after any `WHERE` clause and before any `ORDER BY` clause.

---

Some SQL implementations allow you to specify `GROUP BY` columns by the position in the `SELECT` list. For example, `GROUP BY 2, 1` can mean group by the second column selected and then by the first. Although this shorthand syntax is convenient, it is not supported by all SQL implementations. It's use is also risky in that it is highly susceptible to the introduction of errors when editing SQL statements.

---

`WHERE` FILTERS ROWS;

`HAVING` FILTERS GROUPS;

---

`WHERE` filters before data is grouped.

`HAVING` filters after data is grouped.

So, rows that are eliminated by a `WHERE` clause WILL NOT BE INCLUDED in the group.

---

`HAVING` is so similar to `WHERE` that most DBMSs treat them as the same thing if no `GROUP BY` is specified.

---

|`ORDER BY`|`GROUP BY`|
|-|-|
|Sorts generated output|Groups rows. The output might not be in group order, however|
|Any columns (even columns not selected) may be used|Only selected columns or expressions columns may be used, and every selected column expressions must be used|
|Never required|Required if using columns (or expressions) with aggregate functions|

---

**Tip**: As a rule, anytime you use a `GROUP BY` clause, you should also specify an `ORDER BY` clause. That is the only way to ensure that data will be sorted properly. Never rely on `GROUP BY` to sort your data.

`ORDER BY` can perform sorting by alias.

---

`SELECT` Clause Ordering

|Clause|Description|Required|
|-|-|-|
|`SELECT`|Columns or expressions to be returned|Yes|
|`FROM`|Table to retrieve data from|Only if selecting data from a table|
|`WHERE`|Row-level filtering|No|
|`GROUP BY`|Group specification|Only if calculating aggregated by group|
|`HAVING`|Group-level filtering|No|
|`ORDER BY`|Output sort order|No|

---

If calculated fields retrieved in `SELECT` are used with `GROUP BY`, it will executed on each group.
