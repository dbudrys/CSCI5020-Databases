USE MyGuitarShop;

SELECT FirstName, LastName, Line1, City, State, ZipCode
FROM Customers AS C
JOIN Addresses AS A
ON C.CustomerID = A.CustomerID
WHERE A.AddressID = C.ShippingAddressID