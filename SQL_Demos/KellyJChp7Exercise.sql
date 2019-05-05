--Joseph Kelly
--Chapter 7 Exercise
--Statements demonstrating understanding of concepts in Chp 7

--SQL 1
USE MyGuitarShop
INSERT INTO Categories
			(CategoryName) 
VALUES ('Brass');


--SQL 1 Proof is correct
USE MyGuitarShop
SELECT *
FROM Categories
ORDER BY CategoryID DESC;


--SQL 2
USE MyGuitarShop
UPDATE Categories
SET CategoryName = 'Woodwinds'
WHERE CategoryID = 5;


--SQL 2 Proof is correct
USE MyGuitarShop
SELECT *
FROM Categories
ORDER BY CategoryID DESC;


--SQL 3
DELETE Categories
WHERE CategoryID = 5;


--SQL 3 Proof is correct
USE MyGuitarShop
SELECT *
FROM Categories
ORDER BY CategoryID DESC;


--SQL 4
USE MyGuitarShop
INSERT INTO Products
			(CategoryID, ProductCode, ProductName, 
			Description, ListPrice, DiscountPercent, DateAdded)
VALUES (4, 'dgx_640','Yamaha DGX 640 88-Key Digital Piano',
		'Long description to come.',799.99, 0, 
		'2019-10-30 15:12:00.000');

--SQL 4 Proof is correct
USE MyGuitarShop
SELECT *
FROM Products
WHERE CategoryID = 4;

--or
USE MyGuitarShop
SELECT *
FROM Products
ORDER BY ProductID DESC;