--Joseph Kelly
--Chapter 4 SQL joins
--queries to demonstrate join queries

--SQL 1
USE MyGuitarShop
SELECT ProductName, CategoryName, ListPrice
FROM Products
JOIN Categories
	ON Categories.CategoryID = Products.CategoryID
ORDER BY CategoryName, ProductName ASC;

--SQL 1 Proof is correct
USE MyGuitarShop
SELECT ProductName, CategoryName, ListPrice, Categories.CategoryID,
	Products.CategoryID
FROM Products,Categories
ORDER BY CategoryName, ProductName ASC;

--SQL 2
USE MyGuitarShop
SELECT FirstName, LastName, Line1, City, State, ZipCode
FROM Customers
JOIN Addresses
	ON Customers.CustomerID = Addresses.CustomerID
WHERE Customers.EmailAddress = 'allan.sherwood@yahoo.com';

--SQL 2 Proof is correct
USE MyGuitarShop
SELECT Customers.CustomerID AS CID, FirstName,LastName, Line1, City, State, 
	EmailAddress AS email, Addresses.CustomerID AS AID
FROM Customers, Addresses
WHERE LastName = 'Sherwood'
ORDER BY LastName ASC;

--SQL 3
USE MyGuitarShop
SELECT FirstName, LastName, Line1 AS ShipAddress, City,
	State, ZipCode
FROM Customers
JOIN Addresses
	ON Customers.CustomerID = Addresses.CustomerID
	AND Customers.ShippingAddressID = Addresses.AddressID

--SQL 3 Proof is correct
USE MyGuitarShop
SELECT Customers.CustomerID AS CID,FirstName, LastName,
 Line1 AS Address, Addresses.CustomerID AS AID,
 Customers.ShippingAddressID, Addresses.AddressID
FROM Customers, Addresses
ORDER BY LastName ASC;

 --SQL 4
USE  MyGuitarShop
SELECT cust.LastName, cust.FirstName, OrderDate,
	prod.ProductName, ItemPrice, DiscountAmount, 
	Quantity
FROM Customers AS cust
JOIN Orders AS ord
	ON cust.CustomerID = ord.CustomerID
JOIN OrderItems AS ordItm
	ON ord.OrderID = ordItm.OrderID
JOIN Products AS prod
	ON ordItm.ProductID = prod.ProductID
ORDER BY LastName, OrderDate,ProductName
 
 --SQL 4 Proof is Correct
USE MyGuitarShop
Select LastName, FirstName, OrderDate AS Date, Customers.CustomerID AS CID,
	Products.ProductName AS ProdName, ItemPrice, DiscountAmount AS DiscAMT, 
	Quantity, OrderItems.OrderID AS OItmID, Orders.OrderID AS OrdID,
	OrderItems.ProductID AS OItmPID, Products.ProductID AS PID
FROM Customers, Orders, OrderItems,Products
ORDER BY LastName ASC;

