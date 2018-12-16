USE MyGuitarShop;


-- First must set Password column to null in Customer
-- Otherwise error will occure !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

-- ALTER TABLE Customers 
-- ALTER COLUMN Password varchar(60) NULL


DECLARE @x xml


SELECT @x=C
FROM OPENROWSET (BULK 'C:\Users\domo\Desktop\Exercise starts\NewCustomers.xml', SINGLE_BLOB) as Customers(C)

DECLARE @hdoc int

EXEC sp_xml_preparedocument @hdoc OUTPUT, @x


INSERT INTO Customers(EmailAddress, Password, FirstName, LastName)
SELECT * 
FROM OPENXML(@hdoc, '/NewCustomers/Customer', 1)
WITH(
	EmailAddress varchar(255),
	Passwrod varchar(60),
	FirstName varchar(60),
	LastName varchar(60)
)

EXEC sp_xml_removedocument @hdoc


