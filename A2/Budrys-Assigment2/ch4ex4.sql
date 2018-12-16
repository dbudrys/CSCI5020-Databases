USE MyGuitarShop;

SELECT C.CategoryName, P.ProductID
FROM Products As P
FULL OUTER JOIN Categories AS C
ON P.CategoryID = C.CategoryID
WHERE P.ProductID IS NULL