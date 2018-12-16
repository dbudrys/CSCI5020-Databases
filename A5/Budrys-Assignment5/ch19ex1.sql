USE MyGuitarShop;

SELECT C.FirstName, C.LastName, A.Line1, A.Line2, A.City, A.State, A.ZipCode
FROM Customers AS C
JOIN Addresses AS A
ON C.CustomerID = A.CustomerID
FOR XML PATH ('Customer'), ROOT ('Customers')

-- SELECT XML_SCHEMA_NAMESPACE('MyGuitarShop', 'CustomerAddresses')

-- To Create XML Schema and .xsd file 
SELECT C.FirstName, C.LastName, A.Line1, A.Line2, A.City, A.State, A.ZipCode
FROM Customers AS C
JOIN Addresses AS A
ON C.CustomerID = A.CustomerID
FOR XML AUTO, XMLSCHEMA ('CustomerAddresses')
