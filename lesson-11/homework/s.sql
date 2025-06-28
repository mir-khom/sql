1  select o.OrderID, c.firstname+' '+lastname asCustomerName, o.OrderDate from customers c join orders o 
on c.customerid=o.customerid  where orderdate>='2022-01-01'
2  select name as employeename , d.departmentname from employees e join departments d 
on e.departmentid=d.departmentid where departmentname='sales' or departmentname='marketing'
3  select departmentname , max(e.salary)as maxsalary from departments d join employees e 
on d.departmentid=e.departmentid group by d.departmentname
4 select o.OrderID, c.firstname+' '+lastname asCustomerName, o.OrderDate from customers c join orders o 
on c.customerid=o.customerid  where orderdate like '2023%' and c.country='USA'
5  select count  (o.OrderID) totalorder, c.firstname+' '+lastname as CustomerName from customers c join orders o 
on c.customerid=o.customerid group by c.firstname+' '+lastname
6 select p.ProductName, s.SupplierName  from products p join suppliers s 
on p.supplierid=s.supplierid  where  suppliername='Gadget Supplies' or suppliername='Clothing Mart'
7 SELECT 
    c.FirstName + ' ' + c.LastName AS CustomerName,
    MAX(o.OrderDate) AS MostRecentOrderDate
FROM 
    Customers c
LEFT JOIN 
    Orders o ON c.CustomerID = o.CustomerID
GROUP BY 
    c.FirstName, c.LastName;
8  select  o.totalamount as ordertotal ,c.firstname+' '+lastname as CustomerName 
from customers c join orders o 
on c.customerid=o.customerid where o.totalamount>500
9  	select ProductName, s.SaleDate, s.SaleAmount from products p join sales s
	on p.productid=s.productid
	where saledate like '2022%' or saleamount>400
10  	select ProductName, sum(SaleAmount) from products p join sales s
	on p.productid=s.productid
group by p.productname
11 select departmentname , e.name as employeename , e.salary  from departments d join employees e 
on d.departmentid=e.departmentid 
where departmentname='hr' and salary>60000
12  	select ProductName, s.SaleDate, StockQuantity from products p join sales s
	on p.productid=s.productid
where saledate like '2023%'and stockquantity>100
13 select departmentname , e.name as employeename , e.hiredate   from departments d join employees e 
on d.departmentid=e.departmentid 
where departmentname='sales' or hiredate>='2020.01.01'
14 SELECT 
    c.FirstName + ' ' + c.LastName AS CustomerName,
    o.OrderID,
    c.Address,
    o.OrderDate
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
WHERE 
    c.Country = 'USA' 
    AND c.Address LIKE '4%';
15 SELECT 
    p.ProductName,
    c.CategoryName,
    s.SaleAmount
FROM 
    Sales s
JOIN 
    Products p ON s.ProductID = p.ProductID
JOIN 
    Categories c ON p.Category = c.CategoryID
WHERE 
    c.CategoryName = 'Electronics'
    OR s.SaleAmount > 350;

16 SELECT 
    c.CategoryName,
    COUNT(p.ProductID) AS ProductCount
FROM 
    Categories c
LEFT JOIN 
    Products p ON p.Category = c.CategoryID
GROUP BY 
    c.CategoryName;

17 SELECT 
    c.FirstName + ' ' + c.LastName AS CustomerName,
    c.City,
    o.OrderID,
    o.TotalAmount AS Amount
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
WHERE 
    c.City = 'Los Angeles'
    AND o.TotalAmount > 300;

18 SELECT 
    e.Name AS EmployeeName,
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName IN ('Human Resources', 'Finance')
    OR 
    (LEN(e.Name) - LEN(REPLACE(LOWER(e.Name), 'a', '')) +
     LEN(e.Name) - LEN(REPLACE(LOWER(e.Name), 'e', '')) +
     LEN(e.Name) - LEN(REPLACE(LOWER(e.Name), 'i', '')) +
     LEN(e.Name) - LEN(REPLACE(LOWER(e.Name), 'o', '')) +
     LEN(e.Name) - LEN(REPLACE(LOWER(e.Name), 'u', ''))) >= 4;

19 SELECT 
    e.Name AS EmployeeName,
    d.DepartmentName,
    e.Salary
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName IN ('Sales', 'Marketing')
    AND e.Salary > 60000;

