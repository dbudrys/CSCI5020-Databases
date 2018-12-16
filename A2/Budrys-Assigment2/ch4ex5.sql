USE MyGuitarShop;

SELECT 'NOT SHIPPED' AS ShipStatus, OrderID, OrderDate
FROM Orders
WHERE ShipDate IS NULL

UNION

SELECT 'SHIPPED' AS ShipStatus, OrderID, OrderDate
FROM Orders
WHERE ShipDate IS NOT NULL

ORDER BY OrderDate