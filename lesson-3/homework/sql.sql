Define and explain the purpose of BULK INSERT in SQL Server.
  Definition:
BULK INSERT is a Transact-SQL (T-SQL) statement that imports data from a file (such as a CSV, TXT, or other delimited files) into a database table in bulk.

Purpose:
Fast Data Loading: It is designed for high-performance, large-volume data import operations.

Efficiency: Bulk insert minimizes the overhead involved compared to inserting rows one by one using INSERT INTO statements.

Automated Data Import: Useful in ETL (Extract, Transform, Load) processes where external data files are imported into SQL Server.

Supports Various File Formats: Can handle files with different delimiters, row terminators, and can specify formats.

Basic Syntax:
sql
Копировать
Редактировать
BULK INSERT [database_name].[schema_name].[table_name]
FROM 'datafile_path'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
FIELDTERMINATOR: Specifies the delimiter between fields (e.g., comma for CSV).

ROWTERMINATOR: Specifies the delimiter between rows (usually newline).

FIRSTROW: Optional, specifies the first row to start importing (useful if the first row is headers).

Example:
sql
Копировать
Редактировать
BULK INSERT dbo.Employees
FROM 'C:\Data\employees.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
This command imports data from employees.csv into the Employees table, skipping the header row.



List four file formats that can be imported into SQL Server.
  CSV (Comma-Separated Values)

Plain text files where each field is separated by a comma.

TXT (Text files with delimiters)

Plain text files that use other delimiters like tabs (\t), pipes (|), or semicolons (;).

XML (Extensible Markup Language)

Structured markup files that can represent hierarchical data.

Excel files (XLS or XLSX)

Spreadsheet files, often imported using tools like SQL Server Integration Services (SSIS) or OPENROWSET.

Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).
  create table Products (Productid int primary key ,Productname varchar (50),Price decimal(10,2))

Insert three records into the Products table using INSERT INTO.
  insert into Products
values
(1,'telefon',255894.225),
(2,'kampyuter',335566.2586),
(3,'olma',2589.23525)

Explain the difference between NULL and NOT NULL.
  NULL
Meaning: Represents the absence of a value or an unknown value in a database column.

Usage: When a column is allowed to have missing or undefined data, it can be set to NULL.

Behavior: NULL is not the same as zero or an empty string; it literally means "no data."

Example: If a person’s middle name is unknown, the MiddleName column might be NULL.

NOT NULL
Meaning: Specifies that a column must always have a valid (non-NULL) value.

Usage: When you want to enforce that a column always contains meaningful data.

Behavior: SQL Server will reject any attempt to insert or update the column with NULL.

Example: A CustomerID column often has a NOT NULL constraint because every record needs an ID.



Add a UNIQUE constraint to the ProductName column in the Products table.
  alter table Products
add constraint unique_PN unique (productname)

Write a comment in a SQL query explaining its purpose.
  select * from products

Add CategoryID column to the Products table
alter table Products
add  CategoryID int

Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE
create table Categories (categoryid int primary key, Categoryname Varchar (50) unique )


Explain the purpose of the IDENTITY column in SQL Server.
  Purpose of the IDENTITY Column
The IDENTITY property is used to create an auto-incrementing numeric column in a table.

It automatically generates a unique number for each new row inserted, without the need to manually specify a value.

Commonly used for primary keys or unique identifiers to ensure each record has a distinct value.

Helps maintain data integrity by guaranteeing unique IDs.

How it works:
You define an IDENTITY column by specifying a seed (starting number) and an increment (how much to increase for each new row).

Example: IDENTITY(1,1) means start at 1 and increase by 1 for each new row.

Example:
sql
Копировать
Редактировать
CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50)
);
Here, EmployeeID will automatically be assigned 1 for the first row, 2 for the second, and so on.

Summary:
The IDENTITY column simplifies automatic unique number generation for table rows, making it easy to maintain unique keys without extra coding. It’s essential for many database designs where unique row identifiers are required.


Use BULK INSERT to import data from a text file into the Products table.
  BULK INSERT Products
FROM 'C:\Data\products.txt'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

Create a FOREIGN KEY in the Products table that references the Categories table.
alter table products
add constraint FK_CATEGORYID foreign key (categoryid) references categories(categoryid)


Explain the differences between PRIMARY KEY and UNIQUE KEY.
  🔑 1. PRIMARY KEY
Purpose: Uniquely identifies each row in a table.

Uniqueness: Does not allow duplicate values.

NULLs: Does not allow NULL values at all.

Count per Table: Only one PRIMARY KEY is allowed per table.

Creates: A clustered index by default (unless one already exists).

🔐 2. UNIQUE KEY
Purpose: Enforces uniqueness on one or more columns.

Uniqueness: Does not allow duplicate values.

NULLs: Allows one or more NULLs (because NULL is treated as “unknown” and not equal to another NULL).

Count per Table: You can have multiple UNIQUE constraints on a table.

Creates: A non-clustered index by default.

🔄 Quick Comparison Table
Feature	PRIMARY KEY	UNIQUE KEY
Enforces Uniqueness	✅ Yes	✅ Yes
Allows NULLs	❌ No	✅ Yes (1 or more)
Duplicates Allowed	❌ No	❌ No
One per Table	✅ Only one	✅ Multiple allowed
Default Index Type	Clustered (default)	Non-clustered (default)

✅ Example:
sql
Копировать
Редактировать
-- PRIMARY KEY example
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name NVARCHAR(100)
);

-- UNIQUE KEY example
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Email NVARCHAR(100) UNIQUE
);
Here, CustomerID must be unique and not null, and Email must also be unique, but it can be null.



Add a CHECK constraint to the Products table ensuring Price > 0.

alter table products
add constraint CHECK_PRICE check (price>0)

Modify the Products table to add a column Stock (INT, NOT NULL).

  
Delete from products
alter table products
add stock int not null


Use the ISNULL function to replace NULL values in Price column with a 0.
update products 
set price=0
where price isnull

Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.
  ✅ Purpose:
A FOREIGN KEY constraint in SQL Server is used to enforce a relationship between two tables. It ensures referential integrity — meaning, a value in one table must match a value in another table.

📘 What it Does:
Links a column (or group of columns) in one table (the child) to a PRIMARY KEY or UNIQUE column in another table (the parent).

Prevents inserting or updating values in the child table that don't exist in the parent table.

Prevents deleting records from the parent table if related records still exist in the child table (unless you allow it with cascading rules).

🛠️ Usage Example:
Assume you have two tables: Orders and Customers.

sql
Копировать
Редактировать
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name NVARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);
In this example:

Orders.CustomerID is a foreign key referencing Customers.CustomerID.

You can’t insert an order with a CustomerID that doesn’t exist in the Customers table.

⚠️ Benefits of FOREIGN KEYs:
Enforce data consistency

Maintain relational links between tables

Help prevent orphaned records (e.g., orders without a valid customer)

🔁 Optional Behavior: Cascading Actions
You can control what happens when the parent key is updated or deleted:

sql
Копировать
Редактировать
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID)
ON DELETE CASCADE
ON UPDATE CASCADE;
ON DELETE CASCADE: Deletes child rows when the parent is deleted.

ON UPDATE CASCADE: Updates child rows when the parent key changes.

Create a table with an IDENTITY column starting at 100 and incrementing by 10.
  create table costumers (customerid int , age int check (age>=18))


  Write a query to create a composite PRIMARY KEY in a new table OrderDetails.
  create table orderdetails (id int, price int constraint PK_ID_PRICE primary key (id,price))


  Explain the use of COALESCE and ISNULL functions for handling NULL values.🔧 1. ISNULL Function
✅ Purpose:
Replaces a NULL value with a specified replacement value.

📘 Syntax:
sql
Копировать
Редактировать
ISNULL(expression, replacement_value)
📌 Example:
sql
Копировать
Редактировать
SELECT ISNULL(Price, 0) AS Price
FROM Products;
If Price is NULL, it returns 0.

⚠️ Limitation:
Accepts only two arguments.

The return type is the type of the first argument.

🔁 2. COALESCE Function
✅ Purpose:
Returns the first non-NULL value from a list of expressions.

📘 Syntax:
sql
Копировать
Редактировать
COALESCE(expression1, expression2, ..., expressionN)
📌 Example:
sql
Копировать
Редактировать
SELECT COALESCE(DiscountPrice, RegularPrice, 0) AS FinalPrice
FROM Products;
Returns DiscountPrice if not NULL, otherwise RegularPrice, and if that’s also NULL, returns 0.

✅ Advantages over ISNULL:
Supports multiple arguments.

Returns the data type of the highest precedence among the arguments.


  Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.
  create table employees (Empid int primary key , Email varchar (50) unique)


Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.

  alter table products
add constraint FK_CATEGORYID foreign key (categoryid) references categories(categoryid) ON DELETE CASCADE ON UPDATE CASCADE
