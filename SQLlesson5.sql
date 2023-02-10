USE TestDB2


--CREATE TABLE Customers
--(
--    Id INT PRIMARY KEY IDENTITY,
--    Age INT DEFAULT 18, 
--    FirstName NVARCHAR(20) NOT NULL,
--    LastName NVARCHAR(20) NOT NULL,
--    Email VARCHAR(30) UNIQUE,
--    Phone VARCHAR(20) UNIQUE
--);

--CREATE TABLE Orders
--(
--    Id INT IDENTITY,
--    CustomerId INT,
--    CreatedAt Date
--);
--ALTER TABLE Customers
--ADD Address NVARCHAR(50) NULL;
--ALTER TABLE Customers
--ADD Sex VARCHAR(1) NOT NULL;


--ALTER TABLE Customers
--ADD Sex VARCHAR(1) NOT NULL DEFAULT 'Ì';

--ALTER TABLE Customers
--DROP COLUMN Address;

--ALTER TABLE Customers
--ALTER COLUMN FirstName NVARCHAR(200);

--ALTER TABLE Customers
--ADD CHECK (Age > 21);

--ALTER TABLE Customers WITH NOCHECK
--ADD CHECK (Age > 21);


--ALTER TABLE Orders
--ADD FOREIGN KEY(CustomerId) REFERENCES Customers(Id);

--ALTER TABLE Orders
--ADD PRIMARY KEY (Id);

--ALTER TABLE Orders
--ADD CONSTRAINT PK_Orders_Id PRIMARY KEY (Id),
--CONSTRAINT FK_Orders_To_Customers FOREIGN KEY(CustomerId) REFERENCES Customers(Id);


--ALTER TABLE Customers
--ADD CONSTRAINT CK_Age_Greater_Than_100 CHECK (Age <= 100);

--ALTER TABLE Customers
--DROP CK_Age_Greater_Than_100;



--3
--ALTER TABLE Customers
--ADD AddressId INT NULL;

--1
--create TABLE ADRESSS(
--Id INT,
--City nvarchar(50),
--Street nvarchar(50),
--HouseNumber INT
--)


--ALTER TABLE ADRESSS WITH NOCHECK
--ADD CHECK (HouseNumber > 0);

--2
ALTER TABLE  ADRESSS
ADD PRIMARY KEY (Id);


--4
--ALTER TABLE Customers
--ADD FOREIGN KEY(AddressId) REFERENCES Customers(Id);





