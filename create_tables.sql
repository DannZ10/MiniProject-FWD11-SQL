CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('student', 'instructor', 'admin') DEFAULT 'student' NOT NULL
);

CREATE TABLE course_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE course (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    price INT DEFAULT 0 NOT NULL,
    quota INT DEFAULT 0 NOT NULL,
    instructor_id INT NOT NULL,
    category_id INT NOT NULL,
    CONSTRAINT fk_instructor 
        FOREIGN KEY (instructor_id) REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT fk_category 
        FOREIGN KEY (category_id) REFERENCES course_category(id) ON DELETE RESTRICT
);