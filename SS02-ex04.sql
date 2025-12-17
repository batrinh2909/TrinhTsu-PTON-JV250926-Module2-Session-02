CREATE DATABASE CompanyDB1;
USE CompanyDB1;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT ,
    FullName VARCHAR(100) NOT NULL,
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES 
(1, 'IT'), (2, 'HR'), (3, 'Marketing');

INSERT INTO Employees (FullName, Salary, DepartmentID) VALUES 
('Nguyen Van A', 1500, 1),
('Tran Thi B', 1200, 1),
('Le Van C', 800, 2),
('Pham Van D', 950, 3),
('Hoang Thi E', 700, 2);