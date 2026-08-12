-- SQL GROUP BY and HAVING

CREATE TABLE Sales (
    id INT,
    customer VARCHAR(50),
    city VARCHAR(50),
    amount INT
);

INSERT INTO Sales VALUES
(1, 'Amit', 'Pune', 5000),
(2, 'Rahul', 'Mumbai', 3000),
(3, 'Priya', 'Pune', 7000),
(4, 'Sneha', 'Mumbai', 4000),
(5, 'Rohan', 'Pune', 6000);

-- Total sales for each city
SELECT city, SUM(amount) AS total_sales
FROM Sales
GROUP BY city;

-- Number of sales in each city
SELECT city, COUNT(*) AS number_of_sales
FROM Sales
GROUP BY city;

-- Average sale amount for each city
SELECT city, AVG(amount) AS average_sales
FROM Sales
GROUP BY city;

-- Cities where total sales are greater than 10000
SELECT city, SUM(amount) AS total_sales
FROM Sales
GROUP BY city
HAVING SUM(amount) > 10000;
