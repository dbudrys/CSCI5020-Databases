USE MyGuitarShop;

SELECT CONVERT(varchar, OrderDate, 101) AS [MM/DD/YYYY],
	CONVERT (varchar, OrderDate, 100) AS [mon dd yyyy hh:mm AM (or PM)],
	CONVERT (varchar, OrderDate, 108) AS [hh:mm:ss]
FROM Orders;
