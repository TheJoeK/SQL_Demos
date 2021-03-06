--Joseph Kelly
-- Chapter 6 Exercise
-- Select statements and proofs demonstrating understanding of concepts

--SQL 1
USE MyGuitarShop
SELECT CategoryName
FROM Categories
WHERE CategoryID IN
	(SELECT DISTINCT CategoryID
	 FROM Products)
ORDER BY CategoryName;

--SQL 1 Proof is correct
USE MyGuitarShop
SELECT DISTINCT CategoryName
FROM Categories c JOIN Products p
    ON c.CategoryID = p.CategoryID
ORDER BY CategoryName;

				--Proof 1 part 2 CategoryName not DISTINCT but CatID and ProdID are the same
USE MyGuitarShop
SELECT Categories.CategoryID AS CatID, Categories.CategoryName, Products.CategoryID AS ProdID
FROM Categories, Products
WHERE Categories.CategoryID = Products.CategoryID
ORDER BY CategoryName;

--SQL 2
USE MyGuitarShop
SELECT ProductName, ListPrice
FROM Products
WHERE ListPrice >
	(SELECT AVG(ListPrice)
	FROM Products
	WHERE ListPrice > 0)
ORDER BY ListPrice DESC;

--SQL Proof is correct
USE MyGuitarShop
SELECT AVG(ListPrice)
FROM Products

				--not sure if I should only include this as well or just the average
USE MyGuitarShop
SELECT ProductName, ListPrice
FROM Products
ORDER BY ListPrice DESC;

--SQL 3
USE MyGuitarShop
SELECT CategoryName
FROM Categories
WHERE NOT EXISTS (
	SELECT *
	FROM Products
	WHERE Categories.CategoryID = 
		Products.CategoryID)
ORDER BY CategoryName DESC;

--SQL 3 Proof is correct
USE MyGuitarShop
SELECT Categories.CategoryID AS CatID, Products.CategoryID AS ProdID,
		CategoryName
FROM Categories, Products
--WHERE Categories.CategoryID <> Products.CategoryID
ORDER BY CategoryName DESC;
