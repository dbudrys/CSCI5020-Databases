USE MyGuitarShop;

UPDATE Customers
SET Password = 'secret'
WHERE EmailAddress = 'rick@raven.com';

SELECT * FROM Customers;