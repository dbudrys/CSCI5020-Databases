USE MyGuitarShop;

SELECT ProductName, ListPrice, DateAdded
FROM Products
WHERE ListPrice > 500 AND ListPrice < 2000
ORDER BY DateAdded DESC