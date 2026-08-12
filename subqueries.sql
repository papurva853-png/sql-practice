-- SQL Subqueries

CREATE TABLE Employee (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employee VALUES
(1, 'Amit', 'IT', 40000),
(2, 'Rahul', 'HR', 35000),
(3, 'Priya', 'IT', 50000),
(4, 'Sneha', 'Sales', 45000),
(5, 'Rohan', 'IT', 55000);

-- Employees earning more than the average salary
SELECT emp_name, salary
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
);

-- Employee with the highest salary
SELECT emp_name, salary
FROM Employee
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
);

-- Employees earning less than the average salary
SELECT emp_name, salary
FROM Employee
WHERE salary < (
    SELECT AVG(salary)
    FROM Employee
);

-- Employees from the IT department
SELECT emp_name, salary
FROM Employee
WHERE department = 'IT'
AND salary > (
    SELECT AVG(salary)
    FROM Employee
);
