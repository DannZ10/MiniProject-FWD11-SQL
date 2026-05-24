-- SQL Fundamentals

-- Case 1
SELECT * FROM course;

-- Case 2
SELECT title, price FROM course;

-- Case 3
SELECT * FROM course WHERE price >= 50000 AND price <= 200000;

-- Case 4
SELECT * FROM course WHERE quota = 0 OR price > 500000;

-- Case 5
SELECT * FROM course ORDER BY price DESC LIMIT 5;