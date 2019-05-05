--Joseph Kelly
--CIT 270 SQL FINAL
--CODE for creation of a database, tables, and rows. Including Primary keys and foreign keys
Create Database EvileCorp;

USE EvileCorp;

CREATE TABLE Customers(
custID int PRIMARY KEY,
Fname varchar(20),
Lname varchar(20),
address varchar(40),
city varchar(20),
state varchar(2),
zip int, 
email varchar (50)
);



CREATE TABLE Vendors(
vendorID varchar(10) PRIMARY KEY,
Name varchar(40),
address varchar(50),
city varchar(20),
State varchar(2),
zip varchar(10),
phone varchar(15),
email varchar(40),
typeSales varchar(40)
);



CREATE TABLE Employees(
empID int PRIMARY KEY,
Fname varchar(20),
Lname varchar(20),
address varchar(40),
city varchar(20),
state varchar(2),
zip int, 
phone varchar(15),
email varchar (50),
department varchar(20),
position varchar(20)
);

CREATE TABLE Inventory(
ItemNo varchar(10) PRIMARY KEY,
category varchar(2), 
itemName varchar (40),
itemDescription varchar (50),
gender varchar(6),
color varchar(20),
size varchar(20),
itemCount int,
vendor varchar(10)
CONSTRAINT FK_InvenVendors
	FOREIGN KEY(vendor)
	REFERENCES Vendors(VendorID)
);



CREATE TABLE CustomersSales(
lineNum int PRIMARY KEY,
[receipt #] int, 
custID int,
ItemNo varchar(10),
CONSTRAINT FK_CustSalesCust
	FOREIGN KEY(custID)
	REFERENCES Customers(custID),
CONSTRAINT FK_CustSalesEmp
	FOREIGN KEY(custID)
	REFERENCES Employees(empID),
CONSTRAINT FK_CustSalesInv
	FOREIGN KEY(ItemNo)
	REFERENCES Inventory(ItemNo)
);

--Customer table column value inserts
INSERT INTO Customers 
	values(10001, 'Dianna', 'Weaver','123 Nobhill Rd', 'Rusty', 'LA', 71270,'dweaver@mail.com'	
);
INSERT INTO Customers 
	values(10002,'Jason', 'Weaver','23 Nobhill Rd','Rusty','LA',70972,'jww133@email.com'
);
INSERT INTO Customers 
	values(10003,'Robin','Weaver','26 Nobhill Rd','Rusty','LA',70972, null
);
INSERT INTO Customers 
	values(10004,'Alan','Weaver','125 Water St', 'Rusty', 'LA', 70972, null	
);
INSERT INTO Customers
	values(10005,'Bob', 'Kroger', '87 Grow Tree Ln', 'Hobbiton', 'LA',70972, null	
);
INSERT INTO Customers 
	values(10006, 'Debbie',	'Fuller', '1001 E. Tulip St', 'Rusty', 'LA',70972, null
);
INSERT INTO Customers 
	values(10007,'Erin', 'Smyth', '987 TwoTrees Lane', 'Hobbiton', 'LA', 70972, null
);
INSERT INTO Customers
	values(10008, 'Jacob', 'Johnson', '396 Snowy Dr', 'Mt Merdoc', 'LA', 70972, null	
);
INSERT INTO Customers
	values(10009, 'Ellie', 'Dawson', '9234 Walk St', 'Rusty', 'LA', 70972, null
);
INSERT INTO Customers 
	values(10010, 'Bob', 'Hobnob', '99 Nob Hill', 'Rusty', 'LA', 70972, null	
);

--Employees table column value inserts
INSERT INTO Employees 
	values(10001, 'Jack', 'Smyth','123 George Ave', 'Rusty', 'LA', 71273,'318-555-7435','jsmyth@atc.com', 'Sales', 'agent'
);
INSERT INTO Employees 
	values(10002, 'Rhona', 'Zank','45 Goldfield Rd', 'Rusty', 'LA', 71274,'318-555-7436','rzank@atc.com', 'Sales', 'cashier'
);
INSERT INTO Employees 
	values(10003, 'Waldo', 'Day','838 Ivy Rd', 'Rusty', 'LA', 71275,'318-555-7437','wday@atc.com', 'admin', 'manager'
);
INSERT INTO Employees 
	values(10004, 'Dale', 'Spring','332 San Carlos St', 'Rusty', 'LA', 71276,'318-555-7438','dspring@atc.com', 'admin', 'asst manager'
);
INSERT INTO Employees 
	values(10005, 'Earl', 'Village','234 S Devon St', 'Rusty', 'LA', 71277,'318-555-7439','evillage@atc.com', 'inventory', 'assistant'
);
INSERT INTO Employees 
	values(10006, 'Arie', 'Cava','9248 Creekside Dr', 'Pecan', 'LA', 71278,'318-555-7440','acava@atc.com', 'inventory', 'manager'
);
INSERT INTO Employees 
	values(10007, 'Marie', 'Hamp','8546 Cows Rd', 'Rusty', 'LA', 71279,'318-555-7441','mhamp@atc.com', 'admin', 'accountant'
);
INSERT INTO Employees 
	values(10008, 'Kristie', 'Campion','34 Beards Lane', 'Rusty', 'LA', 71280,'318-555-7442','kcampion@atc.com', 'Sales', 'cashier'
);



--Vendors table column value inserts

INSERT INTO Vendors values
(
'V10001','Armadillo Supply', '234 Main St', 'Slidell', 'LA', 85321, '555-314-6897', 'asupply@email.com', 'outdoor equipment'
);

INSERT INTO Vendors values
(
'V10002', 'UK Outdoor', '23 Ally Way', 'Tudor', 'ME', 12055, '555-345-7896', 'ukoutdoor@mail.net', 'clothes Equip'
);

INSERT INTO Vendors values
(
'V10003', 'BottomSider', '12378 Shoe Blvd', 'San Diego', 'CA', 95555, '555-456-7896', 'ca_sandles@cal.com', 'shoes'
);

INSERT INTO Vendors values
(
'V10004', 'Top Designs', '976  Larimer Ave', 'Denver', 'CO', 80204, '888-555-4512', 'top.design@email.net', 'clothes Equip'
);

INSERT INTO Vendors values
(
'V10005', 'Alpine Equip', '566 Minot St', 'Boulder', 'CO', 80301, '900-555-5555', 'alpine-equip@alpine.net', 'outdoor equipment'
);

INSERT INTO Vendors values
(
'V10006', 'Bolt Sailing', '35 Lake St', 'Erie', 'PA', 16508, '800-555-4567', 'boltsailing@bltslg.com', 'sailing equip clothes'
);



--Inventory table column value inserts
INSERT INTO Inventory values
(
 'IT1001', 'WC', 'Womens Hiking Shorts', 'Green with Logo', 'F', 'Green', 'small', 10, 'V10002'
);

INSERT INTO Inventory values
(
'IT1002', 'WC', 'Womens Hiking Shorts', 'Tan with Logo', 'F', 'tan', 'medium', 20, 'V10002'
);

INSERT INTO Inventory values
(
'IT1003', 'WC', 'Womens Fleece Pullover', 'Purple with Logo', 'F', 'purple', 'large', 20, 'V10002'
);

INSERT INTO Inventory values
(
'IT1004', 'WC', 'Womens Fleece Pullover', 'Navy with Logo', 'F', 'blue', 'large', 20, 'V10002'
);

INSERT INTO Inventory values
(
'IT1005', 'CC', 'Childrens Beachcomber Sandals', 'Turquoise', 'M', 'lightBlue', '4', 27, 'V10003'
);

INSERT INTO Inventory values
(
'IT1006', 'CC', 'Childrens Beachcomber Sandals', 'Bright Pink', 'M', 'pink', '6', 19, 'V10003'
);

INSERT INTO Inventory values
(
'IT1007', 'EQ', 'tent', 'nylon', NULL, 'Green', '2 person', 20, 'V10002'
);

INSERT INTO Inventory values
(
'IT1008', 'EQ', 'tent', 'polyester', NULL, 'Green', '6 person', 10, 'V10005'
);

INSERT INTO Inventory values
(
'IT1009', 'EQ', 'stove', 'aluminum', NULL, 'Green', '3 burner', 17, 'V10001'
);

INSERT INTO Inventory values
(
'IT1010', 'MC', 'Mens Hiking Shorts', 'Cotton Twill', 'M', 'Green', 'large', 20, 'V10005'
);

INSERT INTO Inventory values
(
'IT1011', 'MC', 'Mens Hiking Shorts', 'Cotton Twill', 'M', 'blue', 'medium', 17, 'V10005'
);

INSERT INTO Inventory values
(
'IT1012', 'MC', 'Mens Hiking Shorts', 'Nyon', 'M', 'various', 'medium', 15, 'V10006'
);


--CustomersSales table column value inserts
INSERT INTO CustomersSales values(
2013101,130001,10001,'IT1001');
INSERT INTO CustomersSales values(
2013102,130001,10001,'IT1002');
INSERT INTO CustomersSales values(
2013103,130002,10002,'IT1007');
INSERT INTO CustomersSales values(
2013104,130002,10002,'IT1007');
INSERT INTO CustomersSales values(
2013105,130002,10002,'IT1008');
INSERT INTO CustomersSales values(
2013106,130003,10003,'IT1004');







