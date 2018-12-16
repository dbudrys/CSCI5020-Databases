DECLARE CustomerOrdersCursor CURSOR 
FOR
	SELECT LastName, AVG(ShipAmount) AS ShipAmountAvg
	FROM Customers JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID
	GROUP BY LastName

OPEN CustomerOrdersCursor
FETCH NEXT FROM CustomerOrdersCursor

WHILE (@@FETCH_STATUS =0)
BEGIN
	FETCH NEXT FROM CustomerOrdersCursor
END

CLOSE CustomerOrdersCursor 
DEALLOCATE CustomerOrdersCursor