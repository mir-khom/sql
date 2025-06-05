Create a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).
  create table  employees (empid int , name varchar (50), salary decimal (10,2))

Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).
  insert into employees (empid,name,salary)
values
(1,'Dilshon',12000.25 )


insert into employees (empid,name,salary)
values
(2,'otabek', 222.02),
(3,' Nigora', 5656.25),
(4,'Azam', 498752.249)

Update the Salary of an employee to 7000 where EmpID = 1.
update employees set salary=7000 where empid=1

Delete a record from the Employees table where EmpID = 2.
delete from employees where empid=2

Give a brief definition for difference between DELETE, TRUNCATE, and DROP.
1. DELETE
What it does: Deletes specific rows from a table.

Can use WHERE clause: ✅ Yes

Rollback possible: ✅ Yes (if inside a transaction)

Table remains: ✅ Yes (structure stays)

Example:

sql
Копировать
Редактировать
DELETE FROM Employees WHERE EmpID = 2;
2. TRUNCATE
What it does: Deletes all rows from a table quickly.

Can use WHERE clause: ❌ No

Rollback possible: ⚠️ Sometimes (depends on DB engine and transaction settings)

Table remains: ✅ Yes (structure stays)

Example:

sql
Копировать
Редактировать
TRUNCATE TABLE Employees;
3. DROP
What it does: Completely removes the table (structure + data).

Can use WHERE clause: ❌ No

Rollback possible: ❌ No (permanent)

Table remains: ❌ No (table is deleted)

Example:

sql
Копировать
Редактировать
DROP TABLE Employees;

Modify the Name column in the Employees table to VARCHAR(100).
  alter table employees
alter column name varchar (100)

Add a new column Department (VARCHAR(50)) to the Employees table.
  alter table employees
add department varchar (50)

Change the data type of the Salary column to FLOAT.
  alter table employees
alter column salary  float

Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).
  create table department (departmentid int primary key, departmentname varchar (50))

Remove all records from the Employees table without deleting its structure.  
delete from employees

Insert five records into the Departments table using INSERT INTO SELECT method(you can write anything you want as data).
  insert into department ( departmentid, departmentname)
select 1,'Marketing'
union ALL
select 2,'Seles'
union ALL
select 3,'management'
union ALL
select 4,'Production'
union ALL
select 5,'staff'

Update the Department of all employees where Salary > 5000 to 'Management'.

update employees
set department='management'
where salary=5000

Write a query that removes all employees but keeps the table structure intact.
  DELETE FROM Employees;

Drop the Department column from the Employees table.
alter table employees
drop column department

Rename the Employees table to StaffMembers using SQL commands.
  exec sp_rename 'employees','staffmember'

Write a query to completely remove the Departments table from the database.
  drop table department

Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)
create table products (productid int primary key , productname varchar (50), category varchar (30), price decimal (10,2), amountkg int)

Add a CHECK constraint to ensure Price is always greater than 0.
alter table products
add constraint chk_price_positive check (price>0)

Modify the table to add a StockQuantity column with a DEFAULT value of 50.
alter table products
add stockquantity int default 50

Rename Category to ProductCategory
exec sp_rename 'products', 'productcategory'

Insert 5 records into the Products table using standard INSERT INTO queries.

insert into productcategory (productid,productname,category,price,amountkg,stockquantity)
values
(1,'plma','suvli',25,10,5000),


insert into productcategory (productid,productname,category,price,amountkg,stockquantity)
values
(2, 'cola', 'ichimlik', 30, 20, 6000),
(3, 'non', 'ovqat', 10, 50, 2000),
(4, 'qalam', 'kantselyariya', 5, 100, 1500),
(5, 'soat', 'elektron', 120, 15, 10000),
(6, 'shampun', 'gigiena', 45, 25, 3500);

Use SELECT INTO to create a backup table called Products_Backup containing all Products da

SELECT * from Productcategory


Rename the Products table to Inventory.
  exec sp_rename 'productcategory','inventory'
Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.
  alter table inventory
alter column price float

Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to Inventory table.
  ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000, 5);  


create database schooldb
create table students (studentid int PRIMARY KEY , name varchar (50), age int)
insert into students (studentid , name , age)
values
(1,'Abror',14),
(2,'Aziza',25),
(3,'Madina',24)
select * from students

create table  employees (empid int , name varchar (50), salary decimal (10,2))
insert into employees (empid,name,salary)
values
(1,'Dilshon',12000.25 )


insert into employees (empid,name,salary)
values
(2,'otabek', 222.02),
(3,' Nigora', 5656.25),
(4,'Azam', 498752.249)

update employees set salary=7000 where empid=1
select * from employees
delete from employees where empid=2

alter table employees
alter column name varchar (100)

alter table employees
add department varchar (50)

	select * from employees

alter table employees
alter column salary  float

create table department (departmentid int primary key, departmentname varchar (50))

delete from employees

insert into department ( departmentid, departmentname)
select 1,'Marketing'
union ALL
select 2,'Seles'
union ALL
select 3,'management'
union ALL
select 4,'Production'
union ALL
select 5,'staff'

ALTER Table employees
alter department varchar (50)

update employees
set department='management'
where salary=5000

alter table employees
drop column department

exec sp_rename 'employees','staffmember'

drop table department

create table products (productid int primary key , productname varchar (50), category varchar (30), price decimal (10,2), amountkg int)


alter table products
add constraint chk_price_positive check (price>0)

alter table products
add stockquantity int default 50

select * from products

exec sp_rename 'products', 'productcategory'

insert into productcategory (productid,productname,category,price,amountkg,stockquantity)
values
(1,'plma','suvli',25,10,5000),


insert into productcategory (productid,productname,category,price,amountkg,stockquantity)
values
(2, 'cola', 'ichimlik', 30, 20, 6000),
(3, 'non', 'ovqat', 10, 50, 2000),
(4, 'qalam', 'kantselyariya', 5, 100, 1500),
(5, 'soat', 'elektron', 120, 15, 10000),
(6, 'shampun', 'gigiena', 45, 25, 3500);

SELECT * from Productcategory
exec sp_rename 'productcategory','inventory'

alter table inventory
alter column price float

ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000, 5);  

select * from inventory









