USE MyGuitarShop;

SELECT CategoryName, COUNT(P.CategoryID) AS CountOfProducts, 
	MAX(P.ListPrice) AS MostExpensive
FROM Categories AS C
JOIN Products AS P
ON C.CategoryID = P.CategoryID
GROUP BY CategoryName