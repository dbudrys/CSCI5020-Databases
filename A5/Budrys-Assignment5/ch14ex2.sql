USE MyGuitarShop;

DECLARE @TotalProducts int ;
DECLARE @AvgListPrice money;

SET @TotalProducts =
	(SELECT COUNT(*)  FROM Products);

SET @AvgListPrice =
	(SELECT AVG(ListPrice) FROM Products);
	
IF @TotalProducts >=7
	PRINT 'Total number of products =' + CONVERT(varchar, @TotalProducts)
	+ ' and Average list price =' + CONVERT(varchar, @AvgListPrice);
ELSE
	PRINT 'The number of products is less than 7';
 