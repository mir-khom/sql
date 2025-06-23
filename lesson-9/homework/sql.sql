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
10  
