1  select * from products cross join suppliers
2  select * from employees cross join departments
3  select suppliername , productname from products join suppliers
on products.supplierid=suppliers.supplierid
4  SELECT 
    C.FirstName + ' ' + C.LastName AS CustomerName,
    O.OrderID
FROM 
    Orders O
JOIN 
    Customers C ON O.CustomerID = C.CustomerID;

5  select * from courses cross join students
6  select productname , orders.orderid from products join orders on products.productid=orders.productid
7   select employeeid , departmentname from departments join employees on departments.departmentid=employees.departmentid
8  SELECT 
    S.Name AS StudentName,
    E.CourseID
FROM 
    Students S
JOIN 
    Enrollments E ON S.StudentID = E.StudentID;

9  	select * from payments join orders on payments.orderid=orders.orderid
10  SELECT 
    o.OrderID,
    o.CustomerID,
    o.OrderDate,
    p.ProductName,
    p.Price
FROM 
    Orders o
JOIN 
    Products p ON o.ProductID = p.ProductID
WHERE 
    p.Price > 100;

11  SELECT 
    e.EmployeeName, 
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d 
ON 
    e.DepartmentID <> d.DepartmentID;

12  	select * from orders join products on quantity>stockquantity
13    c.CustomerName, 
    s.ProductID
FROM 
    Customers c
JOIN 
    Sales s ON c.CustomerID = s.CustomerID
WHERE 
    s.SaleAmount >= 500;
14  SELECT 
    s.StudentName,
    c.CourseName
FROM 
    Students s
JOIN 
    Enrollments e ON s.StudentID = e.StudentID
JOIN 
    Courses c ON e.CourseID = c.CourseID;

15 SELECT 
    p.ProductName, 
    s.SupplierName
FROM 
    Products p
JOIN 
    Suppliers s ON p.SupplierID = s.SupplierID
WHERE 
    s.SupplierName LIKE '%Tech%';

16 SELECT 
    o.OrderID, 
    o.TotalAmount, 
    p.PaymentAmount
FROM 
    Orders o
JOIN 
    Payments p ON o.OrderID = p.OrderID
WHERE 
    p.PaymentAmount < o.TotalAmount;

17 SELECT 
    e.EmployeeName, 
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID;

18 SELECT 
    p.ProductName, 
    c.CategoryName
FROM 
    Products p
JOIN 
    Categories c ON p.CategoryID = c.CategoryID
WHERE 
    c.CategoryName IN ('Electronics', 'Furniture');

19 SELECT 
    s.SaleID, 
    s.ProductID, 
    s.SaleAmount, 
    c.CustomerName
FROM 
    Sales s
JOIN 
    Customers c ON s.CustomerID = c.CustomerID
WHERE 
    c.Country = 'USA';

20 SELECT 
    o.OrderID, 
    c.CustomerName, 
    o.TotalAmount
FROM 
    Orders o
JOIN 
    Customers c ON o.CustomerID = c.CustomerID
WHERE 
    c.Country = 'Germany' AND o.TotalAmount > 100;

21 SELECT 
    e1.EmployeeName AS Employee1,
    e2.EmployeeName AS Employee2
FROM 
    Employees e1
JOIN 
    Employees e2 ON e1.EmployeeID <> e2.EmployeeID
WHERE 
    e1.DepartmentID <> e2.DepartmentID;

22 SELECT 
    p.PaymentID,
    o.OrderID,
    pr.ProductName,
    p.PaymentAmount,
    o.Quantity,
    pr.Price
FROM 
    Payments p
JOIN 
    Orders o ON p.OrderID = o.OrderID
JOIN 
    Products pr ON o.ProductID = pr.ProductID
WHERE 
    p.PaymentAmount <> (o.Quantity * pr.Price);

23 SELECT 
    s.StudentName
FROM 
    Students s
LEFT JOIN 
    Enrollments e ON s.StudentID = e.StudentID
WHERE 
    e.CourseID IS NULL;

24 SELECT 
    s.StudentName
FROM 
    Students s
LEFT JOIN 
    Enrollments e ON s.StudentID = e.StudentID
WHERE 
    e.CourseID IS NULL;

25 SELECT 
    c.CustomerName,
    o.OrderID,
    o.TotalAmount
FROM 
    Orders o
JOIN 
    Customers c ON o.CustomerID = c.CustomerID
LEFT JOIN 
    Payments p ON o.OrderID = p.OrderID
WHERE 
    p.PaymentID IS NULL;


