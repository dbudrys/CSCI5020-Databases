USE MyWebDB ;

ALTER TABLE Users
ALTER COLUMN FirstName CHAR(20) NOT NULL;

UPDATE Users
SET FirstName = null
WHERE UserID = 1;

UPDATE Users
SET FirstName = 'The quick brown foxs jumps over the lazy dog'
WHERE UserID = 1;