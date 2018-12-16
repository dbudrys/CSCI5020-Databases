CREATE VIEW ProductSummary
AS

SELECT ProductName, COUNT(OrderID) AS OrderCount, SUM(ItemTotal) AS TotalSale
FROM OrderItemProducts
GROUP BY ProductName