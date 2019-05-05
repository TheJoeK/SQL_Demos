--Joseph Kelly
--Joseph Kelly Chp 3 project B
--Queries demonstrating further understanding of SQL language

--1: Query ordering list prices between 500 and 2000 in descending order by date
USE MyGuitarShop
SELECT ProductName, listPrice, DateAdded
FROM Products
WHERE ListPrice > 500 AND ListPrice < 2000
ORDER BY DateAdded DESC;

--Proof
USE MyGuitarShop
SELECT *
FROM Products
ORDER BY ProductID ASC;


--2: SELECT Statement that demonstrates basic addition in SQL

SELECT 100 AS Price, 0.07 AS TaxRate, 100 * 0.07 AS TaxAmount,
	 100 + 100 * 0.07 AS Total



