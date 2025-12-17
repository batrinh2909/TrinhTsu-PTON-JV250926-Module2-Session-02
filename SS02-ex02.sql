CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Category VARCHAR(100),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT DEFAULT 0
);

INSERT INTO Products (ProductName, Category, Price, StockQuantity)
VALUES 
('Samsung S25 ', 'Phones', 999.99, 50),
('Nike zoo', 'Sneaker', 120.50, 100),
('Gundam', 'Toys', 75.00, 30);