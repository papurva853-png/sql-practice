-- Basic SQL Queries

CREATE TABLE Student (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

INSERT INTO Student VALUES
(1, 'Amit', 20, 'Pune'),
(2, 'Rahul', 21, 'Mumbai'),
(3, 'Priya', 20, 'Pune'),
(4, 'Sneha', 22, 'Nashik'),
(5, 'Rohan', 21, 'Mumbai');

SELECT * FROM Student;

SELECT name FROM Student;

SELECT * FROM Student
WHERE city = 'Pune';

SELECT * FROM Student
WHERE age > 20;


SELECT * FROM Student
ORDER BY age;
