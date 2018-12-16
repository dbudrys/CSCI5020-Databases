USE MyGuitarShop;

CREATE LOGIN RobertHalliday
WITH PASSWORD = 'HelloBob',
DEFAULT_DATABASE = MyGuitarShop;

CREATE USER RobertHalliday 
FOR LOGIN RobertHalliday;

ALTER ROLE OrderEntry
ADD MEMBER RobertHalliday;