CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE,
    Salary INT -- 
    );
    
ALTER TABLE Employees 
ADD Department VARCHAR(100);

ALTER TABLE Employees 
MODIFY Salary DECIMAL(10, 2);

