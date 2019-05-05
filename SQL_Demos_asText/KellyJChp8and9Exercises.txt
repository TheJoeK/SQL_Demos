--Joseph Kelly
--Chap 8 and 9 exercises
--Queries demonstrating understanding of concepts in Chp 8 and 9

--SQL 1
USE MyGuitarShop
SELECT ListPrice, 
	CAST(ListPrice AS DECIMAL(5, 1)) AS Price, 
	CONVERT(INT, ListPrice) AS [Price as Integer] 
FROM Products;

--SQL 1 Proof is correct
USE MyGuitarShop
SELECT ListPrice
FROM Products;

--SQL 2
USE MyGuitarShop
SELECT DateAdded, 
CAST(DateAdded AS DATE) AS [Just Date]  
FROM Products;

--SQL 2 Proof is correct
USE MyGuitarShop
SELECT DateAdded
FROM Products;

--SQL 3

USE MyGuitarShop
SELECT OrderDate,
	YEAR(OrderDate) AS [Just Year],
	DAY(OrderDate) AS [Just Day],
	DATEADD(Day, 30, OrderDate) AS [Order Date + 30]
FROM Orders;


--SQL Proof is correct
USE MyGuitarShop
SELECT OrderDate
FROM Orders;

