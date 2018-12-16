USE MyGuitarShop;

SELECT C.EmailAddress, COUNT(O.CustomerID) AS OrderCount, 
	SUM((OI.ItemPrice - OI.DiscountAmount) * OI.Quantity) AS TotalAmount

FROM Orders AS O
JOIN Customers AS C
ON O.CustomerID = C.CustomerID

JOIN OrderItems AS OI
ON O.OrderID = OI.OrderID

GROUP BY C.EmailAddress
HAVING COUNT(O.CustomerID) > 1

ORDER BY TotalAmount DESC