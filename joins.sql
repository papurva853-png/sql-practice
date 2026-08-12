-- SQL JOIN Queries

CREATE TABLE Department (
    dept_id INT,
    dept_name VARCHAR(50)
);

CREATE TABLE Employee (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);

INSERT INTO Department VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Sales');

INSERT INTO Employee VALUES
(101, 'Amit', 1, 40000),
(102, 'Rahul', 2, 35000),
(103, 'Priya', 1, 50000),
(104, 'Sneha', 3, 45000),
(105, 'Rohan', 1, 55000);

-- INNER JOIN
SELECT Employee.emp_name, Department.dept_name
FROM Employee
INNER JOIN Department
ON Employee.dept_id = Department.dept_id;

-- LEFT JOIN
SELECT Employee.emp_name, Department.dept_name
FROM Employee
LEFT JOIN Department
ON Employee.dept_id = Department.dept_id;

-- RIGHT JOIN
SELECT Employee.emp_name, Department.dept_name
FROM Employee
RIGHT JOIN Department
ON Employee.dept_id = Department.dept_id;

-- JOIN with salary condition
SELECT Employee.emp_name, Department.dept_name, Employee.salary
FROM Employee
INNER JOIN Department
ON Employee.dept_id = Department.dept_id
WHERE Employee.salary > 40000;
