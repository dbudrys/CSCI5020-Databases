USE MyGuitarShop;

SELECT C.LastName, C.FirstName, O.OrderDate, P.ProductName, OI.ItemPrice,
	OI.DiscountAmount, OI.Quantity
FROM Customers AS C
JOIN Orders AS O
ON C.CustomerID = O.CustomerID

JOIN OrderItems AS OI
ON O.OrderID = OI.OrderID

JOIN Products AS P
ON OI.ProductID = P.ProductID

ORDER BY C.LastName, O.OrderDate, P.ProductName
