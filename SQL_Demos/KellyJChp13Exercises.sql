--Joseph Kelly
--Chapter 13 SQL exercises
--Statements demonstrating understanding of lessons of chp 13

--SQL 1
CREATE VIEW [Customer Address] AS
SELECT cust.CustomerID, cust.EmailAddress, cust.LastName, cust.FirstName,
	billAddr.Line1 AS BillLine1, billAddr.Line2 AS BillLine2, 
	billAddr.City AS BillCity, billAddr.State AS BillState, billAddr.ZipCode AS BillZip, 
	shipAddr.Line1 AS ShipLine1, shipAddr.Line2 AS ShipLine2,
	shipAddr.City AS ShipCity, shipAddr.State AS ShipState, shipAddr.ZipCode AS ShipZip
FROM Customers cust
JOIN Addresses billAddr ON cust.BillingAddressID = billAddr.AddressID
JOIN Addresses shipAddr ON cust.ShippingAddressID = shipAddr.AddressID;


--SQL 1 Proof is correct
USE MyGuitarShop
SELECT *
FROM [Customer Address];

--SQL 2
USE MyGuitarShop
SELECT CustomerID, LastName, FirstName, BillLine1
FROM [Customer Address];

--SQL 2 Proof is correct
USE MyGuitarShop
SELECT *
FROM [Customer Address];


--SQL 3
USE MyGuitarShop
UPDATE [Customer Address]
SET ShipLine1 = '1990 Westwood Blvd'
WHERE CustomerID = 8;

--SQL 3 Proof is correct
USE MyGuitarShop
SELECT *
FROM [Customer Address]
WHERE CustomerID = 8;
