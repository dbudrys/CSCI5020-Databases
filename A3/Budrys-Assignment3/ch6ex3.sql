USE MyGuitarShop;


SELECT CategoryName 
FROM Categories as C
WHERE C.CategoryID  NOT IN
	(SELECT P.CategoryID FROM Products as P )
ORDER BY C.CategoryName;
