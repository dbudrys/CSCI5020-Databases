USE MyGuitarShop;

SELECT P1.ProductID , P1. ProductName, P1.ListPrice
FROM Products AS P1, Products AS P2
WHERE P1.ProductID <> P2.ProductID
	AND P1.ListPrice = P2.ListPrice