
CREATE VIEW CustomerAddresses
AS

SELECT C.CustomerID, C.EmailAddress, C.LastName, C.FirstName,
A_Bill.Line1 AS BillLine1, A_Bill.Line2 AS BillLine2, A_Bill.City AS BillCity,
A_Bill.State AS BillState, A_Bill.ZipCode AS BillZip,
A_Ship.Line1 AS ShipLine1, A_Ship.Line2 AS ShipLine2, A_Ship.City AS ShipCity,
A_Ship.State AS ShipState, A_Ship.ZipCode AS ShipZip

FROM Customers AS C
JOIN Addresses AS A_Bill
ON A_Bill.AddressID = C.BillingAddressID

JOIN Addresses AS A_Ship
ON A_Ship.AddressID = C.ShippingAddressID;
