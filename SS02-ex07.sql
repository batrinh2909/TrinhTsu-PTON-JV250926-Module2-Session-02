CREATE DATABASE Sales ;

USE Sales ;

create table Sales (
SaleId int primary key,
SaleDate date ,
CustomerID int , 
TotalAmount decimal(10,2)
);

create table Products (
ProductID  int primary key,
ProductName nvarchar (255),
Category nvarchar (255),
Price decimal(10,2)
);

create table SalesDetails (
SaleDetailID int primary key,
SaleID int,
ProductID int,
Quantity int,
UnitPrice decimal(10,2)
);