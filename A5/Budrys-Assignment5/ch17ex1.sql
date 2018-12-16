BEGIN TRY
	BEGIN TRAN

		DELETE FROM Addresses
		WHERE CustomerID = 8;

		-- Must Execute this statement in order to work 
		-- Becase there are CustomerID values in Orders table
		-- DELETE FROM Orders
		-- WHERE CustomerID = 8
		
		DELETE FROM Customers
		WHERE CustomerID = 8; 
		
	COMMIT TRAN; 
END TRY
BEGIN CATCH
	ROLLBACK TRAN;
	Print('Transaction did not work. Cannot be deleted based on 
			provided instructions in the question. Must uncomment 
			above provided code to work.');
END CATCH; 