--CREATE DATABASE Shop
--USE Shop
--GO
CREATE TABLE Supplier(
Id INT PRIMARY KEY IDENTITY,
Phone INT ,
Name NVARCHAR(20) NOT NULL ,
Statys NVARCHAR(20), 
City NVARCHAR(30))

GO
CREATE TABLE Products(
Id INT PRIMARY KEY IDENTITY,
Phone INT ,
Name NVARCHAR(20) NOT NULL ,
Sale INT,
Unit NVARCHAR(20),
City NVARCHAR(30))

GO
CREATE TABLE Organization(
Id INT PRIMARY KEY IDENTITY,
Name NVARCHAR(20) NOT NULL,
City NVARCHAR(30))

GO
CREATE TABLE deliveries(
Id_Supplier INT,
Id_Products INT,
Id_Organization INT,
PRIMARY KEY (Id_Supplier, Id_Products, Id_Organization),
FOREIGN KEY (Id_Supplier)
REFERENCES Supplier,
FOREIGN KEY (Id_Products)
REFERENCES Products,
FOREIGN KEY (Id_Organization)
REFERENCES Organization,
Quantity INT,
Date INT)

