

CREATE FUNCTION fnDiscountPrice 
	(@InputItemID int)
	RETURNS money

BEGIN
	RETURN (SELECT ItemPrice -  DiscountAmount 
			FROM OrderItems
			WHERE ItemID = @InputItemID)
END;


