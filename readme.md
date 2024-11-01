
# PostgreSQL Basics - Assignment Answers

This README provides brief answers to key PostgreSQL concepts covered in the assignment.

---

### 1. What is PostgreSQL?
PostgreSQL is a powerful open-source database management system used to store, retrieve, and manage data efficiently.

### 2. What is the purpose of a database schema in PostgreSQL?
A schema organizes tables and data structures, helping keep the database structured and easy to navigate.

### 3. Explain the primary key and foreign key concepts in PostgreSQL.
- **Primary Key**: A unique identifier for each row in a table, ensuring no duplicates (e.g., ID).
- **Foreign Key**: A reference to a primary key in another table, linking related data across tables.

### 4. What is the difference between the VARCHAR and CHAR data types?
- **VARCHAR**: Stores variable-length text, saving space.
- **CHAR**: Stores fixed-length text, padding with spaces if shorter than defined length.

### 5. Explain the purpose of the WHERE clause in a SELECT statement.
The `WHERE` clause filters results to show only rows that meet specific conditions.

### 6. What are the LIMIT and OFFSET clauses used for?
- **LIMIT**: Limits the number of rows returned by a query.
- **OFFSET**: Skips a set number of rows before starting to return data.

### 7. How can you perform data modification using UPDATE statements?
Use `UPDATE` to modify existing data by specifying the table, the columns to change, and conditions to match the correct rows.

### 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
JOINs combine rows from multiple tables based on related columns, allowing data from different sources to be linked.

### 9. Explain the GROUP BY clause and its role in aggregation operations.
`GROUP BY` groups rows that have the same values in specified columns, enabling the use of aggregate functions (like COUNT) to summarize data for each group.

### 10. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?
Aggregate functions are used in queries to count, sum, or average column values, simplifying data analysis.

### 11. What is the purpose of an index in PostgreSQL, and how does it optimize query performance?
An index speeds up searches by providing a fast lookup for specific column values, reducing the time needed to scan the table.

### 12. Explain the concept of a PostgreSQL view and how it differs from a table.
A view is a saved query that acts like a virtual table, presenting data from one or more tables without storing it separately.

---
