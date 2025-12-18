CREATE DATABASE Ecommerce ;

USE Ecommerce ;

CREATE TABLE Customer (
    CustomerID int PRIMARY KEY,
    CustomerName varchar(100) NOT NULL,
    Email varchar(100),
    Phone varchar(15)
);

CREATE TABLE Orders (
    OrderId int PRIMARY KEY,
    OrderDate date,
    CustomerID int,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE OrderDetail (
    OrderDetailID int PRIMARY KEY,
    OrderId int,
    ProductID int,
    Quantity int,
    UnitPrice decimal(10, 2),
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
);

INSERT INTO Customer (CustomerID, CustomerName, Email, Phone) VALUES
(1 , 'Truong Trinh' , 'Trinh@gmail.com' , '01234567891'),
(2 , 'Ba Trinh' , 'batrinh@gmail.com' , '01234567892') ;

INSERT INTO Orders ( OrderId , OrderDate, CustomerID ) VALUES
(101 , '2025-12-17' , 1 ) , 
(102 , '2025-12-17' , 2 ) , 
(103 , '2025-12-18' , 1 ) ;

INSERT INTO OrderDetail (OrderDetailID, OrderId, ProductID, Quantity, UnitPrice) VALUES
(901, 101, 9999, 10, 1010.90),
(902, 102, 8888, 11, 888.72),
(903, 103, 8888, 12, 12000.12);

