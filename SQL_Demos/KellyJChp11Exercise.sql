--Joseph Kelly
--Chapter 11 SQL exercise
--SQL query scripts that demonstrate understanding of concepts in chp 11

--SQL 1
USE MyGuitarShop
CREATE INDEX zipIndex ON Addresses(ZipCode);


--SQL 1 Proof is correct
EXEC sp_helpindex 'dbo.Addresses'
GO
--SQL 2

DROP Database MyWebDB;

CREATE Database MyWebDB;

USE MyWebDB

CREATE TABLE Users(
UserID int PRIMARY KEY,
EmailAddress varchar(40),
FirstName varchar(15),
LastName varchar(15)
);

CREATE TABLE Product(
ProductID int PRIMARY KEY,
ProductName varchar(40)
);


CREATE TABLE Downloads(
DownloadID int PRIMARY KEY,
UserID int,
DownloadDate DATE,
FileName varchar(50),
ProductID int,
--CONSTRAINT fk_ProductDownload FOREIGN KEY(ProductsID)REFERENCES Products(ProductsID)
--CONSTRAINT fk_UsersDownload FOREIGN KEY(UserID)REFERENCES Users(UserID)
CONSTRAINT FK_UsersDL
	FOREIGN KEY(UserID)
	REFERENCES Users(UserID),
CONSTRAINT FK_ProdDL
	FOREIGN KEY(ProductID)
	REFERENCES Product(ProductID)
);


--SQL 2 Proof is correct
USE MyWebDB
SELECT *
FROM Product,Users,Downloads

--SQL 3
INSERT INTO Users values(1,'radicalduder@gmail.com', 'Rad','Dude');
INSERT INTO Users values(2,'coldman@gmail.com','Cool','Guy'); 

INSERT INTO Product values(1,'Funky Jams Mega Mix');
INSERT INTO Product values(2,'Ride The Lightning');

--(DownloadID, UserID, Date, filename, productID)
--NO CLUE WHY IT WONT TAKE ALL THREE
INSERT INTO Downloads values(1,1,GETDATE(),'fight_fire_with_fire.m4a',2);
INSERT INTO Downloads values(2,2,GETDATE(),'not_just_knee_deep.m4a',1);
INSERT INTO Downloads values(3,2,GETDATE(),'trapped_under_ice.m4a',2);

SELECT EmailAddress, FirstName, LastName, DownloadDate, FileName, ProductName
FROM Users, Product, Downloads
WHERE Users.USERID=Downloads.UserID
AND Product.ProductID=Downloads.ProductID
ORDER BY EmailAddress desc, ProductName asc;


--SQL3 Proof is correct

USE MyWebDB
select *
from Downloads,Product,Users


USE MyWebDB
Drop Table Downloads


