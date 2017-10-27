Using SQL functions can be highly problematic: the function name or syntax can differ greatly from one DBMS to another.

---

Most SQL implementations support the following types of functions:
* Text functions used to manipulate strings or text.
* Numeric functions.
* Date and time functions.
* System functions (return information specific to the DBMS being used).

---

**The format used to store dates and times is usually of no use to your applications**, and so date and time functions are almost always used to read, expand, and manipulate these values. Because of this, date and time manipulation functions are some of the most important functions in SQL.

Unfortunately, they also tend to be the least consistent and least protable.

---
