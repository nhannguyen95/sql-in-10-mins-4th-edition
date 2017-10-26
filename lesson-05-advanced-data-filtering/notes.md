SQL (like most languages) processes `AND` operators before `OR` operators.

---

`IN` operator accomplishes the same goal as `OR`.

`IN` operators almost always execute more quickly than lists of `OR` operators.

---

The biggest advantage of `IN` is that the `IN` operator can contain another `SELECT` statement, enabling you to build highly dynamic `WHERE` clauses.

---

`NOT` is never used by itself, it is always used in conjunction with some other operator.
