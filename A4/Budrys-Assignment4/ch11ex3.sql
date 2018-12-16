USE MyWebDB ;

INSERT INTO Products
VALUES 
	(1, 'Local Music Vol 1'),
	(2, 'Local Music Vol 2')
;

INSERT INTO Users
VALUES 
	(1, 'johnsmith@gmail.com', 'John', 'Smith'),
	(2, 'janedoe@yahoo.com', 'Jane', 'Doe')
;

INSERT INTO Downloads
VALUES
	(1, 1, GETDATE(), 'pedals_are_falling.mp3', 1),
	(2, 2, GETDATE(), 'turn_signal.mp3', 1),
	(3, 2, GETDATE(), 'one_house_town.mp3', 2)
;

SELECT U.EmailAddress, U.FirstName, U.LastName, 
D.DownloadDate, D.FileName, P.ProductName
FROM Products AS P
JOIN Downloads AS D
ON P.ProductID = D.ProductID

JOIN Users AS U
ON D.UserID = U.UserID;





