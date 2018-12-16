CREATE PROC spInsertProducts
	@InputCategoryID int, 
	@InputProductCode varchar(255),
	@InputProductName varchar(255),
	@InputListPrice money,
	@InputDiscountPercent money
	
AS

	IF (@InputListPrice < 0)  
		PRINT ('ListPrice cannot be negative');

	ELSE IF (@InputDiscountPercent < 0 )
		PRINT ('DiscountPrice cannot be negative');
	ELSE  
		INSERT INTO Products (CategoryID, ProductCode, ProductName,
							Description, ListPrice, DiscountPercent, DateAdded)
		VALUES (@InputCategoryID, @InputProductCode, @InputProductName,
		'', @InputListPrice, @InputDiscountPercent, GETDATE());