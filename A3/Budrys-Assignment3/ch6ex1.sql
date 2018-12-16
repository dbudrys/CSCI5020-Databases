USE MyGuitarShop;

SELECT DISTINCT CategoryName 
FROM Categories as C
JOIN Products as P
	ON C.CategoryID = P.CategoryID
ORDER BY CategoryName;

SELECT CategoryName 
FROM Categories as C
WHERE C.CategoryID IN
	(SELECT DISTINCT P.CategoryID FROM Products as P )
ORDER BY C.CategoryName;
