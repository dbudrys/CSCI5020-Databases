USE MyGuitarShop;

SELECT YEAR(OrderDate) AS [Year],
	DAY(OrderDate) AS [Day],
	DATEADD(day ,30, OrderDate) AS Added30Days
FROM Orders