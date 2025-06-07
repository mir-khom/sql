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
