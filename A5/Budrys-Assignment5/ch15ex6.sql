CREATE TRIGGER Porducts_UPDATE	 
	ON Products
	AFTER UPDATE
AS
BEGIN 
	
	DECLARE @UpdatedID int 
	DECLARE @InputAmount money
	DECLARE @PercentAmount money
	
	SET @InputAmount = (SELECT DiscountPercent FROM inserted)
	SET @UpdatedID = (SELECT ProductID FROM inserted)
	SET @PercentAmount = @InputAmount * 100

	SET NOCOUNT ON

	IF UPDATE(DiscountPercent)
		
		IF (@InputAmount < 0 )
			BEGIN
				ROLLBACK TRANSACTION;
				RAISERROR('DiscountAmount cannot be negative', 16, 1);
			END
		ELSE IF (@InputAmount > 100 )
			BEGIN
				ROLLBACK TRANSACTION;
				RAISERROR('DiscountAmount cannot be more than a 100', 16, 1);
			END

		ELSE IF (@InputAmount > 0  AND @InputAmount < 1)
			UPDATE Products
			SET DiscountPercent = @PercentAmount
			WHERE ProductID = @UpdatedID

END