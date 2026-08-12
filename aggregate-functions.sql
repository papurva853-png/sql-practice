-- SQL Aggregate Functions

CREATE TABLE Employee (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employee VALUES
(1, 'Amit', 'IT', 40000),
(2, 'Rahul', 'HR', 35000),
(3, 'Priya', 'IT', 50000),
(4, 'Sneha', 'Sales', 45000),
(5, 'Rohan', 'IT', 55000);

-- Count total employees
SELECT COUNT(*) AS total_employees
FROM Employee;

-- Find total salary
SELECT SUM(salary) AS total_salary
FROM Employee;

-- Find average salary
SELECT AVG(salary) AS average_salary
FROM Employee;

-- Find highest salary
SELECT MAX(salary) AS highest_salary
FROM Employee;

-- Find lowest salary
SELECT MIN(salary) AS lowest_salary
FROM Employee;
