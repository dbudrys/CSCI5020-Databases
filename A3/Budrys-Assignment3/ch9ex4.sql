USE MyGuitarShop;

SELECT OrderID, OrderDate, 
	DATEADD(DAY, 2, OrderDate) AS ApproxShipDate,
	ShipDate,
	DATEDIFF(DAY, OrderDate, ShipDate) AS DaysToShip

FROM Orders
WHERE OrderDate BETWEEN '03/01/2012' AND '04/01/2012';