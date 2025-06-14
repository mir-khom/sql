1 select  productname, min(price) from products group by Productname
2 select  max (salary) from employees
3 select count (*) from customers
4 select count (distinct category) from products
5 
select Productid , sum( saleamount) from sales group by Productid
having Productid =7
6 select avg ( age) from employees
7 select departmentname , count (employeeid) from employees group by Departmentname
8 select category , min(price), Max(price) from Products group by category
9 select Customerid  , sum(saleamount) from sales Group by customerid 
10 select departmentname , count (employeeid) from employees
group by departmentname
having count(employeeid)>5
11 select productid , sum(saleamount) as TSA  , avg(saleamount) as ASA from sales group by Productid
12 	select departmentname , count (employeeid) from employees group by Departmentname
	having departmentname='HR'
13 	select departmentname , max(salary) , min(salary) from employees group by Departmentname
14 	select departmentname , avg(salary) from employees group by Departmentname
15 	select departmentname , avg(salary), count(employeeid) from employees group by departmentname
16 	select category , avg(price) from products group by category having avg(price)>400
17 	select saledate , sum(saleamount) from sales group by saledate
18 	select customerid , count (quantity) from Orders group by Customerid having count(quantity)>3
19 	Select Departmentname , sum(salary) from employees group by departmentname having sum (salary)>50000
20 	select category ,avg(price) from products group by category having avg(price)>150
21 	select customerid , sum(saleamount) from sales group by customerid having sum(saleamount)>1500
22 	select departmentname , sum(salary) , avg(salary) from employees group by Departmentname having avg(salary)>65000
23 SELECT 
    CustomerID,
    SUM(CASE WHEN Freight > 50 THEN Freight ELSE 0 END) AS TotalHighFreight,
    MIN(Freight) AS LeastPurchase
FROM 
    TSQL2012.Sales.Orders
GROUP BY 
    CustomerID;

24 
select orderdate , sum (Totalamount), count (distinct Productid) from orders group by orderdate having count(distinct Productid)?2
25 select orderdate , max (quantity), min (quantity) from orders group by orderdate



















