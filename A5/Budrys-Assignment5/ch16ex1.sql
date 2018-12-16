DECLARE @InputProductID int
DECLARE @InputProductName varchar(255)
DECLARE @InputListPrice money

DECLARE ProductNameCursor CURSOR FOR

	SELECT ProductID, ProductName, ListPrice
	FROM Products 
	WHERE ListPrice > 700
	ORDER BY ListPrice DESC

OPEN ProductNameCursor

FETCH NEXT FROM ProductNameCursor INTO @InputProductID, @InputProductName, @InputListPrice

WHILE (@@FETCH_STATUS = 0)
BEGIN
	
	PRINT(@InputProductName + ', $' + CONVERT(varchar, @InputListPrice))
	FETCH NEXT FROM ProductNameCursor INTO @InputProductID, @InputProductName, @InputListPrice

END

CLOSE ProductNameCursor
DEALLOCATE ProductNameCursor