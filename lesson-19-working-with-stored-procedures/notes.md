Stored Procedures are simply collections of one or more SQL statements saved for future use. You can think of them as batch files, although in truth they are more than that.

---

Why use Stored Procedures?
* To simplify complex operations by encapsulating processes into a single easy-to-use unit.
* To ensure date consistency by not requiring that a series of steps be created over and over.
* To simplify change management: If tables, column names, or business logic.. changes, then only the stored procedure code needs to be updated. An extension of this is security: restricting access to underlying data via stored procedures reduces the chance of data corruption.
* Because Store Procedures are usually stored in a compiled form, then DBMS has to do less work to process the command, this improves performance.

In other words, there are 3 primary benefits: simplicity, security and performance.

---

Downside:
* Stored procedure syntax varies dramatically from one DBMS to the next.
* Stored procedures tend to be more complex to write than basic SQL statements, writing them requires a great degree of skill and experience.

Nonetheless, stored procedures are very useful and should be used.
