You want a summary of the data in a table, not the actual data itself.

Therefore, returning the actual table data would be a waste of time and processing resources. All you really want is the summary information.

To facilitate this type of retrieval, SQL features a set of 5 aggregate functions: `AVG()`, `COUNT()`, `MAX()`, `MIN()`, `SUM()`.

**Aggregate Functions** is functions that operate on a set of rows to calculate and return a single value.

---

Column rows containing `NULL` values are ignored by the `AVG()`, `MAX()`, `MIN()`, `SUM()` function.

Column rows with `NULL` values are ignored by the `COUNT()` function if a column name is specified, but not if the asterisk ( * ) is used.

---

`DISTINCT` may only be used with `COUNT()` if a column name is specified.

`DISTINCT` may not be used with `COUNT(*)`.

`DISTINCT` must be used with a column name and not with a calculation or expression.
