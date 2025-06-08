Write a query to select the top 5 employees from the Employees table.
  SELECT TOP 5 * FROM Employees;

Use SELECT DISTINCT to select unique Category values from the Products table.
  SELECT DISTINCT category FROM Products;

Write a query that filters the Products table to show products with Price > 100.
SELECT *
FROM Products
WHERE Price > 100;

Write a query to select all Customers whose FirstName start with 'A' using the LIKE operator.
  SELECT *
FROM Customers
WHERE FirstName LIKE 'A%';

Order the results of a Products table by Price in ascending order.
  SELECT * FROM Products ORDER BY Price;

Write a query that uses the WHERE clause to filter for employees with Salary >= 60000 and Department = 'HR'.
  SELECT *
FROM Employees
WHERE Salary >= 60000
  AND Department = 'HR';

SELECT ISNULL(Email, 'noemail@example.com') AS Email
FROM Employees;

Write a query that shows all products with Price BETWEEN 50 AND 100.
SELECT *
FROM Products
WHERE Price BETWEEN 50 AND 100;

Use SELECT DISTINCT on two columns (Category and ProductName) in the Products tab
SELECT DISTINCT Category, ProductName
FROM Products;

After SELECT DISTINCT on two columns (Category and ProductName) Order the results by ProductName in descending order.
  SELECT DISTINCT Category, ProductName
FROM Products
ORDER BY ProductName DESC;

Write a query to select the top 10 products from the Products table, ordered by Price DESC.
  SELECT TOP 10 *
FROM Products
ORDER BY Price DESC;

Use COALESCE to return the first non-NULL value from FirstName or LastName in the Employees table.
SELECT COALESCE(FirstName, LastName) AS Name
FROM Employees;

Write a query that selects distinct Category and Price from the Products table.
  SELECT DISTINCT Category, Price
FROM Products

  Write a query that filters the Employees table to show employees whose Age is either between 30 and 40 or Department = 'Marketing'.

SELECT * 
FROM employees
WHERE (age > 30 AND age < 40) OR department = 'marketing';

Use OFFSET-FETCH to select rows 11 to 20 from the Employees table, ordered by Salary DESC.
  SELECT *
FROM employees
ORDER BY salary DESC
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

Write a query to display all products with Price <= 1000 and Stock > 50, sorted by Stock in ascending order.
  SELECT *
FROM Products
WHERE Price <= 1000 AND Stock > 50
ORDER BY Stock ASC;

Write a query that filters the Products table for ProductName values containing the letter 'e' using LIKE.
  SELECT *
FROM Products
WHERE ProductName LIKE '%e%';
SELECT * FROM Employees
WHERE department IN ('HR', 'IT', 'Finance');

Use ORDER BY to display a list of customers ordered by City in ascending and PostalCode in descending order.Use customers table
SELECT *
FROM Customers
ORDER BY City ASC, PostalCode DESC;

SELECT TOP(5) *
FROM Products
ORDER BY SalesAmount DESC;

Combine FirstName and LastName into one column named FullName in the Employees table. (only in select statement)
  FirstName + ' ' + LastName AS FullName
FROM Employees;

Write a query to select the distinct Category, ProductName, and Price for products that are priced above $50, using DISTINCT on three columns.
  vSELECT DISTINCT Category, ProductName, Price
FROM Products
WHERE Price > 50;

Write a query that selects products whose Price is less than 10% of the average price in the Products table. (Do some research on how to find average price of all products)
SELECT *
FROM Products
WHERE Price < 0.1 * (SELECT AVG(Price) FROM Products);

Use WHERE clause to filter for employees whose Age is less than 30 and who work in either the 'HR' or 'IT' department.
SELECT *
FROM Employees
WHERE Age < 30
  AND Department IN ('HR', 'IT');

Use LIKE with wildcard to select all customers whose Email contains the domain '@gmail.com'.
  SELECT *
FROM Customers
WHERE Email LIKE '%@gmail.com';

Write a query that uses the ALL operator to find employees whose salary is greater than all employees in the 'Sales' department.
  SELECT *
FROM Employees
WHERE Salary > ALL (
    SELECT Salary
    FROM Employees
    WHERE Department = 'Sales'

Write a query that filters the Orders table for orders placed in the last 180 days using BETWEEN and LATEST_DATE in the table. (Search how to get the current date and latest date)
Necessary tables:
  SELECT *
FROM Orders
WHERE Latest_Date BETWEEN DATEADD(DAY, -180, GETDATE()) AND GETDATE();
