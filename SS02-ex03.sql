USE companydb;

SELECT * FROM employees 
WHERE Department = 'HR';

DELETE FROM employees 
WHERE Salary < 6200.00;