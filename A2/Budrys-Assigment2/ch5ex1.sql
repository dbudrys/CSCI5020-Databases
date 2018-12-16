USE MyGuitarShop;

SELECT COUNT(*) AS NumberOfOrders, SUM(TaxAmount) AS TaxAmount
FROM Orders