USE MyGuitarShop;

SELECT C.EmailAddress, SUM(OI.ItemPrice * OI.Quantity) AS PriceTotal,
	SUM(OI.DiscountAmount * OI.Quantity) AS DiscountPrice
FROM Orders AS O
JOIN Customers AS C
ON O.CustomerID = C.CustomerID

JOIN OrderItems AS OI
ON O.OrderID = OI.OrderID

GROUP BY C.EmailAddress
ORDER BY PriceTotal DESC