Data manipulation techniques: constraints, indexes, triggers.

---

**CONSTRAINTS**

**Constraints**: rules govern how database data is inserted or manipulated.

**Primary Keys**: a special constraint used to ensure that values in a column (or set of columns) are unique and **never change**. (Read more in _lesson-01/notes_).

**Foreign key**: is a column in a table whose values must be listed in a primary key in another table.

Foreign keys can help prevent accidental deletion: your DBMS does not allow the deletion of rows that have related rows in other tables.

**Unique Constraints**: are used to ensure that all data in a column (or set of columns) is unique. They are similar to primary keys, but there are some important distinctions:
* A table can contain multiple unique constraints, but only one primary key.
* Unique constraint columns can contain `NULL` values.
* Unique constraint columns can be modified or updated.
* Unique constraint columns values can be reused.
* Unlike primary keys, unique constraints cannot be used to define foreign keys.

**Check Constraints**: are used to ensure that data in a column (or set of columns) meets a set of criteria that you specify ([it's not working in MySQL](https://stackoverflow.com/questions/2115497/check-constraint-in-mysql-is-not-working)).

---

**INDEXES**

Indexes are used to sort data logically to improve the speed of searching and sorting operations. The best way to understand indexes is to envision the index at the back of a book.

What makes an index work is the fact that it is sorted correctly.

Database indexes work in much the same way: primary key data is always sorted. Retrieving specific rows by primary key, therefore, is always a fast and efficient operation.

However, searching for values in other columns is usually not as efficient (the DBMS must read every row in the table looking for matches).

The solution is to use an index. You may define an index on >= 1 columns so that the DBMS keeps a sorted list of the contents for its own use.

Something to notice when using indexes:
* Indexes improve the performance of retrieval operations, but they degrade the performance of data insertion, modification and deletion.
* Index data can take up lots of storage space.
* Not all data is suitable for indexing: data that is not sufficiently unique will not benefit as much from indexing as data that has more possible values.
* Indexes are used for data filtering and for data sorting.
* Multiple columns can be defined in an index (A plus B). Such an index will be of use only when data is sorted in A plus B order. (If you want to sort by A, this index would no be of any use.)

_Index effectiveness changes as table data is added or changed. An ideal set of indexes might not be so ideal after several months or data manipulation. It is always a good idea to revisit indexes on a regular basis to fine-tune them as needed._

---

**TRIGGERS**

Triggers are special stored procedures that are executed automatically when specific database activity occurs.

Triggers might be associated with `INSERT`, `UPDATE`, `DELETE` operations (or any combination thereof) on specific tables.

Unlike stored procedures (which are simply stored SQL Statements), triggers are tied to individual tables. A trigger associated with `INSERT` operations on a table will be executed only when a row is inserted into that table.

Within triggers, your code has access to the following:
* All new data in `INSERT` operations.
* All new data and old data in `UPDATE` operations.
* Deleted data in `DELETE` operations.

Some common uses of triggers:
* Ensuring data consistency. For example, converting al state names to uppercase during an INSERT or UPDATE operation.
* Performing actions on other tables based on changes to a table. For example, writing a row to B table each time a row is updated or deleted in A table.
* Performing additional validation and rolling back data if needed. For example, making sure a customer's available credit has not been exceeded and blocking the insertion if it has.
* Calculating computed column values or updating timestamps.

[Trigger Syntax and Examples](https://dev.mysql.com/doc/refman/5.5/en/trigger-syntax.html)

[Difference before and after trigger](https://stackoverflow.com/questions/3646110/difference-before-and-after-trigger-in-oracle)

---

Constraints are processed more quickly than triggers, so whenever possible, use constarints instead.
