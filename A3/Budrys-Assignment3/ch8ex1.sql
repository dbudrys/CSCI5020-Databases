USE MyGuitarShop;

SELECT CAST(ListPrice AS DECIMAL(12, 1)) AS CastColumnDecimal,
	CONVERT(int, ListPrice) AS ConvertColumn,
	CAST(ListPrice AS int) AS CastColumnInt
FROM Products;

