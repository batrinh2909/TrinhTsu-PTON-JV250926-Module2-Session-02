CREATE DATABASE SellManagerment;
USE SellManagerment;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    Category NVARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    ProductID INT,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(1, 'MSI Katana', 'Electronics', 2500.00, 10),
(2, 'iPhone 17 PM', 'Electronics', 1200.00, 15),
(3, 'Bàn phím cơ', 'Accessories', 50.00, 50);

INSERT INTO Orders (OrderID, OrderDate, ProductID, Quantity, TotalAmount) VALUES
(101, '2023-10-25', 1, 1, 0), 
(102, '2023-10-26', 3, 2, 0);

UPDATE Products 
SET Price = 2600.00 
WHERE ProductID = 1;