DECLARE @InputAdminFirst varchar(255)
DECLARE @InputAdminLast varchar(255)
DECLARE @tempPassword varchar(255)

DECLARE @CreateLogin varchar(255)
DECLARE @CreateUser varchar(255)
DECLARE @AlterRole varchar(255)

DECLARE AdminCursor CURSOR FOR

	SELECT FirstName, LastName, Password
	FROM Administrators 
	

OPEN AdminCursor

FETCH NEXT FROM AdminCursor INTO @InputAdminFirst, @InputAdminLast, @tempPassword

WHILE (@@FETCH_STATUS = 0)
BEGIN

	SET @CreateLogin = 'CREATE LOGIN ' + @InputAdminFirst + @InputAdminLast
					 +' WITH PASSWORD = ''' + @tempPassword + 
					 +''', DEFAULT_DATABASE = MyGuitarShop;' 
	
	SET @CreateUser = 'CREATE USER ' + @InputAdminFirst + @InputAdminLast
					 +' FOR LOGIN ' + @InputAdminFirst + @InputAdminLast

	SET @AlterRole = 'ALTER ROLE OrderEntry ADD MEMBER ' 
					 + @InputAdminFirst + @InputAdminLast


	PRINT ('Create Login: ' + @CreateLogin)
	PRINT ('Create User: ' + @CreateUser)
	PRINT ('Add Role: ' + @AlterRole)
	PRINT('--------------')

	EXEC(@CreateLogin)
	EXEC(@CreateUser)
	EXEC(@AlterRole)
	-- CREATE LOGIN @LoginVariable
	-- WITH PASSWORD = @tempPassword,
	-- DEFAULT_DATABASE = MyGuitarShop;

	-- CREATE USER RobertHalliday 
	-- FOR LOGIN RobertHalliday;

	-- ALTER ROLE OrderEntry
	-- ADD MEMBER RobertHalliday;
	
	
	--PRINT(@InputProductName + ', $' + CONVERT(varchar, @InputListPrice))
	FETCH NEXT FROM AdminCursor INTO @InputAdminFirst, @InputAdminLast, @tempPassword


END

CLOSE AdminCursor
DEALLOCATE AdminCursor