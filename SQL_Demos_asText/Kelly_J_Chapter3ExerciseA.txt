--ShipDate null only display
USE MyGuitarShop
SELECT OrderID, OrderDate, ShipDate
FROM Orders
WHERE ShipDate is null
ORDER BY ShipDate ASC;

--ShipDate Proof
USE MyGuitarShop
SELECT *
FROM Orders
ORDER BY ShipDate ASC;


--Descending ListPrice Display
USE MyGuitarShop
SELECT ProductCode, ProductName, ListPrice, DiscountPercent
FROM Products
ORDER BY listPrice DESC;

--ListPrice Proof
USE MyGuitarShop
SELECT *
FROM Products
ORDER BY ProductID ASC;




