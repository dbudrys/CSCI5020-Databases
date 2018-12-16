USE MyGuitarShop;

-- First Query 
SELECT C.EmailAddress, O.OrderID, 
SUM((OI.ItemPrice - OI.DiscountAmount)* OI.Quantity) as OrderTotal
FROM Customers as C
JOIN Orders as O
ON C.CustomerID = O.CustomerID

JOIN OrderItems as OI
ON O.OrderID = OI.OrderID

GROUP BY C.EmailAddress, O.OrderID;


-- Second Query 
SELECT EmailAddress, MAX(OrderTotal) as MaxOrder
FROM 
( SELECT C.EmailAddress, O.OrderID, 
SUM((OI.ItemPrice - OI.DiscountAmount)* OI.Quantity) as OrderTotal
FROM Customers as C
JOIN Orders as O
ON C.CustomerID = O.CustomerID

JOIN OrderItems as OI
ON O.OrderID = OI.OrderID

GROUP BY C.EmailAddress, O.OrderID)
AS part2

GROUP BY EmailAddress