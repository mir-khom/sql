1  select category , count (stockquantity) total_number_products from products group by category
2  select category , avg(price) from products group by category having category='electronics'
3  select * from customers
where city like 'L%'
4  select * from Products
Where productname like '%er'
5  select * from customers
where country like '%A'
6  
select productname , max(price) from products group by productname
7 select *, case when stockquantity<30 then 'LOw_stock' else 'sufficient' end from Products
8  select country ,count (*) from customers group by country
9  select max (quantity), min (quantity) from orders
10 SELECT DISTINCT o.CustomerID
FROM Orders o
LEFT JOIN Invoices i 
    ON o.CustomerID = i.CustomerID 
    AND i.InvoiceDate BETWEEN '2023-01-01' AND '2023-01-31'
WHERE o.OrderDate BETWEEN '2023-01-01' AND '2023-01-31'
  AND i.InvoiceID IS NULL;

11   select productname from products
  union all
  select productname from products_discounted
12    select productname from products
  union 
  select productname from products_discounted
13  
  select orderdate , avg(totalamount) from orders group by orderdate
14   SELECT 
    ProductName, 
    CASE 
        WHEN Price < 100 THEN 'Low'
        WHEN Price >= 100 AND Price < 500 THEN 'Mid'
        ELSE 'High'
    END AS PriceCategory
FROM Products;



  15  SELECT *
INTO Population_Each_Year
FROM (
    SELECT district_id, district_name, population, year
    FROM city_population
) AS SourceTable
PIVOT (
    SUM(population)
    FOR year IN ([2012], [2013])
) AS PivotTable;

16 select productid , sum (saleamount) from sales group by productid
17  SELECT ProductName
FROM Products
WHERE ProductName LIKE '%oo%';

18  SELECT *
INTO Population_Each_City
FROM (
    SELECT year, district_name, population
    FROM city_population
    WHERE district_name IN ('Bektemir', 'Chilonzor', 'Yakkasaroy')
) AS SourceTable
PIVOT (
    SUM(population)
    FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS PivotTable;

19  SELECT TOP 3 CustomerID, SUM(TotalAmount) AS TotalSpent
FROM Invoices
GROUP BY CustomerID
ORDER BY TotalSpent DESC;

20 SELECT district_id, district_name, 
       [Year], 
       population
FROM Population_Each_Year
UNPIVOT (
    population FOR [Year] IN ([2012], [2013])
) AS unpvt;

21 SELECT p.ProductName, COUNT(s.SaleID) AS TimesSold
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
GROUP BY p.ProductName
ORDER BY TimesSold DESC;

22 SELECT [Year], district_name, population
FROM Population_Each_City
UNPIVOT (
    population FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS unpvt;
