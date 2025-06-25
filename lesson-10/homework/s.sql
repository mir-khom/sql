1  select Name, Salary, d.DepartmentName from employees e join departments d on
e.departmentid=d.departmentid where salary>50000
2  select  FirstName, LastName, o.OrderDate from customers c join orders o on
c.customerid=o.customerid where o.orderdate like '2023%'
3 select Name, d.DepartmentName from employees e left join departments d on
e.departmentid=d.departmentid
4 select  s.SupplierName, ProductName from products p right join suppliers  s
on p.supplierid=s.supplierid
5 select o.OrderID, OrderDate, p.PaymentDate, p.Amount from orders o full outer join payments p
on o.orderid=p.orderid
6 select e.name as employeename ,m.name as managername from employees e left join employees m on e.employeeid =m.managerid
7 select name as studentname , c.coursename from enrollments e join students s
on e.studentid=s.studentid join courses c on e.courseid=c.courseid
where coursename='Math 101'
8 select  FirstName, LastName, o.Quantity from customers c join orders o on c.customerid=o.customerid
9 select name as employeename , d.departmentname from employees e join departments d  on e.departmentid=d.departmentid where departmentname='Human Resources'
10  select d.departmentname ,count(employeeid) as employeecount from employees e join departments d 
on e.departmentid=d.departmentid group by d.departmentname having count(employeeid)>5
11  
select ProductName ,p.productid from products p left join sales s on p.productid=s.productid 
where s.productid is null
12 select FirstName, LastName,count (o.orderid) TotalOrders from customers c join orders o 
on c.customerid=o.customerid group by FirstName, LastName having count(o.orderid)>=1
13 select name as employeename , d.departmentname from employees e join departments d 
on e.departmentid=d.departmentid where name is not null and departmentname is not null
14  SELECT 
    e1.Name AS Employee1,
    e2.Name AS Employee2,
    e1.ManagerID
FROM Employees e1
JOIN Employees e2 
    ON e1.ManagerID = e2.ManagerID 
    AND e1.EmployeeID < e2.EmployeeID
WHERE e1.ManagerID IS NOT NULL;

15 select OrderID, OrderDate, c.FirstName, c.LastName from orders o join customers c 
on o.customerid=c.customerid where orderdate like '2022%'
16  select name as EmployeeName, Salary, d.DepartmentName from employees e join departments d 
on e.departmentid=d.departmentid where d.departmentname='sales' and salary>60000
17  select o.OrderID, OrderDate, p.PaymentDate, p.Amount from orders o join payments p 
on o.orderid=p.orderid
18  select p.ProductID, ProductName from products p left join orders o 
on p.productid=o.productid where o.productid is null
19  SELECT 
    e.Name AS EmployeeName,
    e.Salary
FROM Employees e
JOIN (
    SELECT DepartmentID, AVG(Salary) AS AvgSalary
    FROM Employees
    GROUP BY DepartmentID
) dept_avg ON e.DepartmentID = dept_avg.DepartmentID
WHERE e.Salary > dept_avg.AvgSalary;

20  select  o.OrderID, OrderDate from orders o left join payments p 
on o.orderid=p.orderid where p.orderid is null and orderdate<'2020-01-01'
21 select ProductID, ProductName from products p left join categories c on p.category=c.categoryid
where c.categoryid is null
22  SELECT 
    e1.Name AS Employee1,
    e2.Name AS Employee2,
    e1.ManagerID,
    e1.Salary AS Salary1,
    e2.Salary AS Salary2
FROM Employees e1
JOIN Employees e2 
    ON e1.ManagerID = e2.ManagerID
    AND e1.EmployeeID < e2.EmployeeID
WHERE e1.Salary > 60000 AND e2.Salary > 60000
  AND e1.ManagerID IS NOT NULL;

23  select name as EmployeeName, d.DepartmentName from employees e join departments d on e.departmentid=d.departmentid
where d.departmentname like 'm%'
24 select  s.SaleID, p.ProductName, s.SaleAmount from products p join sales s on p.productid=s.productid
where saleamount>500
25 select s.StudentID, s.name as StudentName from enrollments e join students s on  e.studentid=s.studentid join courses c
on e.courseid=c.courseid  where coursename<>'Math 101'
26  select o.OrderID, OrderDate, p.PaymentID from orders o left join payments p 
on o.orderid=p.orderid where p.orderid is null
27 select p.ProductID, p.ProductName, c.CategoryName from products p join categories c 
on p.category=c.categoryid where categoryname='Electronics' or categoryname='Furniture'
