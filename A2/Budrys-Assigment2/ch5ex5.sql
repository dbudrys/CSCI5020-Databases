USE MyGuitarShop;

SELECT P.ProductName, SUM(OI.ItemPrice * Quantity) - SUM(OI.DiscountAmount * Quantity) AS TotalAmount
FROM Products AS P 
JOIN OrderItems AS OI
ON P.ProductID = OI.ProductID

GROUP BY P.ProductName WITH ROLLUP
