--Joseph Kelly
--Chapter 5 SQL exercise
-- two select statements with corresponding proofs to demonstrate knowledge covered in chp 5




--SQL 1
USE MyGuitarShop
SELECT Count(OrderID) AS AmtOrders, SUM(TaxAmount) AS TotalTaxAmt
FROM Orders;
 
--SQL 1 Proof it is correct
USE MyGuitarShop
SELECT OrderID, Count(OrderID) AS AmtOrders, SUM(TaxAmount) AS TotalTaxAmt
FROM Orders
GROUP BY ROLLUP(OrderID)
ORDER BY OrderID ASC;


--SQL 2
USE MyGuitarShop
SELECT EmailAddress, 
	SUM(ItemPrice * Quantity) AS TotalPurchasedAmt,
	SUM(DiscountAmount * Quantity) AS TotalDiscAmt
FROM Customers AS cust
JOIN Orders AS ord 
	ON cust.CustomerID = ord.CustomerID
JOIN OrderItems ordItm 
	ON ord.OrderID = ordItm.OrderID
GROUP BY EmailAddress
ORDER BY EmailAddress ASC;

--SQL 2 Proof it is correct
--I had to use two

USE MyGuitarShop
SELECT EmailAddress, ItemPrice,
	SUM(ItemPrice * Quantity) AS TotalPurchasedAmt
FROM Customers AS cust
JOIN Orders AS ord 
	ON cust.CustomerID = ord.CustomerID
JOIN OrderItems ordItm 
	ON ord.OrderID = ordItm.OrderID
GROUP BY ROLLUP(EmailAddress, ItemPrice)
ORDER BY EmailAddress ASC, ItemPrice DESC;

USE MyGuitarShop
SELECT EmailAddress, DiscountAmount,
	SUM(DiscountAmount * Quantity) AS TotalDiscAmt
FROM Customers AS cust
JOIN Orders AS ord 
	ON cust.CustomerID = ord.CustomerID
JOIN OrderItems ordItm 
	ON ord.OrderID = ordItm.OrderID
GROUP BY ROLLUP(EmailAddress, DiscountAmount)
ORDER BY EmailAddress ASC, DiscountAmount DESC;