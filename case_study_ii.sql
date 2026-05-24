-- Aggregate & Conditional Logic

-- Case 1
SELECT COUNT(id) AS total_user FROM users;

-- Case 2
SELECT COUNT(id) AS total_course FROM course;

-- Case 3
SELECT category_id, COUNT(id) AS total_course FROM course GROUP BY category_id;

-- Case 4
SELECT category_id, ROUND(AVG(price),0) AS avg_price FROM course GROUP BY category_id;

-- Case 5
SELECT category_id, COUNT(id) AS total_course FROM course GROUP BY category_id HAVING total_course > 3;