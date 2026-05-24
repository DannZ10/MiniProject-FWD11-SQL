-- Join Statements

-- Case 1:
SELECT c.title AS course_title, cc.name AS category_name
FROM course c
INNER JOIN course_category cc ON c.category_id = cc.id;

-- Case 2:
SELECT cc.name AS category_name, COUNT(c.id) AS total_courses
FROM course_category cc
LEFT JOIN course c ON cc.id = c.category_id
GROUP BY cc.name
ORDER BY total_courses DESC;

-- Case 3:
SELECT u.name, u.role, COUNT(c.id) AS course_diupload
FROM users u
LEFT JOIN course c ON u.id = c.instructor_id
GROUP BY u.id
ORDER BY course_diupload DESC;

-- Case 4:
SELECT c.title, u.name AS instructor_name
FROM course c
INNER JOIN users u ON c.instructor_id = u.id
WHERE u.role = 'instructor'
ORDER BY c.title ASC;

-- Case 5:
SELECT u.name AS instructor_name, COUNT(c.id) AS total_courses_created
FROM users u
INNER JOIN course c ON u.id = c.instructor_id
WHERE u.role = 'instructor'
GROUP BY u.name
ORDER BY total_courses_created DESC;