USE MyWebDB ;

ALTER TABLE Products
ADD ProductPrice	DECIMAL(5,2) NOT NULL DEFAULT(9.99);

ALTER TABLE Products
ADD AddedDate		DATE NOT NULL DEFAULT(GETDATE());