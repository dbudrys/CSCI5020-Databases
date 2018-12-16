USE master;

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'MyWebDB')
DROP DATABASE MyWebDB;

CREATE DATABASE MyWebDB;
GO
USE MyWebDB ;


CREATE TABLE Users(
	UserID			INT,
	EmailAddress	VARCHAR(255),
	FirstName		VARCHAR(255),
	LastName		VARCHAR(255),

	CONSTRAINT Users_PK PRIMARY KEY (UserID)
);


CREATE TABLE Products(
	ProductID			INT,
	ProductName			VARCHAR(255),

	CONSTRAINT Products_PK PRIMARY KEY (ProductID)
);


CREATE TABLE Downloads (
	DownloadID		INT,
	UserID			INT,
	DownloadDate	DATE,
	FileName		VARCHAR(255),
	ProductID		INT,

	CONSTRAINT Downloads_PK PRIMARY KEY (DownloadID),
	CONSTRAINT UserID_FK FOREIGN KEY (UserID)
		REFERENCES Users(UserID),
	CONSTRAINT ProductID_FK FOREIGN KEY (ProductID)
		REFERENCES Products(ProductID)
);

CREATE INDEX Users_Index
ON Users(UserID);

CREATE INDEX Products_Index
ON Products(ProductID);

CREATE INDEX Downloads_Index
ON Downloads(DownloadID, DownloadDate, FileName);

