
CREATE VIEW OrderItemProducts
AS

SELECT O.OrderID, P.ProductName, O.OrderDate, O.TaxAmount, O.ShipDate,
OI.ItemPrice, OI.DiscountAmount, (OI.ItemPrice - OI.DiscountAmount) AS FinalPrice,
OI.Quantity, ((OI.ItemPrice - OI.DiscountAmount)* OI.Quantity) AS ItemTotal


FROM Orders AS O
JOIN OrderItems AS OI
ON O.OrderID = OI.OrderID

JOIN Products AS P
ON P.ProductID = OI.ProductID