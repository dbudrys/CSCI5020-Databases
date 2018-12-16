USE MyGuitarShop;

DECLARE @TotalProducts int ;
SET @TotalProducts = 
	(SELECT COUNT(*)  FROM Products);
	
IF @TotalProducts >=7
	PRINT 'The number of products is greater or equal to 7';
ELSE
	PRINT 'The number of products is less than 7';
 