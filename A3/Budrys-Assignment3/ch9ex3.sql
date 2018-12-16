USE MyGuitarShop;

SELECT CardNumber, LEN(CardNumber) as Length,
	RIGHT(CardNumber, 4) AS Last4Digits,
	REPLACE(CardNumber,LEFT(CardNumber, 12), 'XXXX-XXXX-XXXX-' ) AS HiddenDigits
FROM Orders