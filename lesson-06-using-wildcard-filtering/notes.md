To use wildcards in search clauses, the `LIKE` operator must be used.

---

Technically, `LIKE` is a predicate, not and operator.

---

The percent sign ( % ) wildcard: match any number (including 0) of occurrences of any character.

If you are using Microsoft Access, then you may need to use * instead of %.

---

Many DBMSs, including Microsoft Access, pad field contents with spaces. For example, if a column expects 50 characters and the text stored is Fish bean bag toy (17 characters), 33 spaces may be appended to the text so as to fully fill the column. This usually has no real impact on data and how it is used, but it could negatively affect the just used SQL statement. The clause `WHERE prod_name LIKE 'F%y'` will only match `prod_name` if it starts with F and ends with y, and if the value is padded with spaces then it will not end with y and so Fish bean bag toy will not be retrieved. One simple solution to this problem is to append a second % to the search pattern, `'F%y%'` will also match characters (or spaces) after the y. A better solution would be to trim the spaces using functions.

---

`%` does not match `NULL`.

---

The Underscore ( _ ) Wildcard is just like %, but it matches just a single character (1, no more and no less).

The _ wildcard is not supported by DB2.

Microsoft Access Wildcards use ? instead of _ .

---

The Brackets ( [] ) Wildcard is used to specify a set of characters , any one of which mush match a character in the specified position (the location of the wildcard).

This wildcard is supported in Microsoft Access and Microsoft SQL Server.

---

Wildcard searches typically take far longer to process than any other types, some usage tips:
* Don't overuse wildcards.
* When you do use wildcards, try to not use them at the beginning of the search pattern unless absolutely necessary. Search patterns that begin with wildcards are the slowest to process.
* Pay careful attention to the placement of wildcards.
