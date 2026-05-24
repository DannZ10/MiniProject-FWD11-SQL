-- Insert Users
INSERT INTO users (name, email, password, role) VALUES
('Budi Santoso', 'budi.inst@dibiedu.com', 'hash_pw_1', 'admin'),
('Siti Aminah', 'siti.inst@dibiedu.com', 'hash_pw_2', 'instructor'),
('Andi Wijaya', 'andi.inst@dibiedu.com', 'hash_pw_3', 'instructor'),
('Rina Melati', 'rina.inst@dibiedu.com', 'hash_pw_4', 'instructor'),
('Fajar Nugroho', 'fajar.inst@dibiedu.com', 'hash_pw_5', 'instructor'),
('Tono Sudirman', 'tono@gmail.com', 'hash_pw_6', 'instructor'),
('Lia Agustina', 'lia.agst@yahoo.com', 'hash_pw_7', 'student'),
('Rudi Hermawan', 'rudi.h@gmail.com', 'hash_pw_8', 'student'),
('Maya Sari', 'maya.sari@outlook.com', 'hash_pw_9', 'student'),
('Deni Pratama', 'deni.p@gmail.com', 'hash_pw_10', 'student'),
('Kiki Amalia', 'kiki.amalia@yahoo.com', 'hash_pw_11', 'student'),
('Reza Pahlevi', 'reza.p@gmail.com', 'hash_pw_12', 'student'),
('Nina Zulkarnaen', 'nina.z@gmail.com', 'hash_pw_13', 'student'),
('Agus Setiawan', 'agus.setiawan@gmail.com', 'hash_pw_14', 'student'),
('Dewi Lestari', 'dewi.l@gmail.com', 'hash_pw_15', 'student');

-- Insert course_categories
INSERT INTO course_category (name, description) VALUES
('Web Development', 'Learn to build dynamic websites from scratch to advanced levels.'),
('Mobile Development', 'Tutorials for creating cross-platform Android and iOS applications.'),
('UI/UX Design', 'Learn interface design principles and user experience architecture.'),
('Data Science', 'Data analysis, machine learning algorithms, and statistics.'),
('Digital Marketing', 'Marketing strategies through digital platforms and social media.'),
('Cyber Security', 'Fundamentals of network security and information systems.'),
('Cloud Computing', 'Introduction to cloud infrastructure like AWS, GCP, and Azure.'),
('Business & Management', 'Managerial, leadership, and enterprise business strategies.'),
('Graphic Design', 'Graphic design workflows using professional tools.'),
('Soft Skills', 'Personal development, public speaking, and communication.');

-- Insert courses
INSERT INTO course (title, description, price, quota, instructor_id, category_id) VALUES
('Web Development Fundamentals', 'Learn the basics of HTML, CSS, and JavaScript to build your first website.', 150000, 50, 2, 1),
('Advanced JavaScript & GSAP', 'Dive deep into JS closures, ES6 features, and advanced GSAP animations.', 200000, 30, 2, 1),
('Responsive Design Mastery', 'Master the art of creating websites that adapt to different screen sizes and devices.', 175000, 40, 3, 3),
('React.js & Next.js for Beginners', 'Comprehensive guide to building interactive UIs and SSR web applications.', 250000, 0, 2, 1),
('Mastering Flutter 2026', 'Build cross-platform mobile apps in a matter of weeks.', 300000, 25, 4, 2),
('Figma UI/UX Design Pro', 'Step-by-step guide to designing application interfaces with Figma.', 220000, 35, 3, 3),
('Python for Data Science', 'Learn Python and data libraries like Pandas and NumPy.', 280000, 20, 5, 4),
('Machine Learning A-Z', 'Machine learning algorithms from theory to practical implementation.', 600000, 15, 5, 4),
('SEO & SEM Essentials', 'Increase your website traffic organically and through paid search.', 150000, 50, 6, 5),
('Ethical Hacking Basics', 'Identify system vulnerabilities and learn how to protect them.', 300000, 20, 4, 6),
('AWS Cloud Practitioner', 'Preparation for the AWS Cloud Practitioner certification.', 400000, 0, 2, 7),
('Public Speaking for Introverts', 'Learn how to speak confidently in public spaces.', 100000, 100, 6, 10),
('Adobe Illustrator Masterclass', 'Master vector graphic design for professional workflows.', 180000, 30, 3, 9),
('Business Financial Management', 'How to manage cash flow for SMEs and Startup companies.', 150000, 40, 5, 8),
('Laravel Enterprise Backend', 'Build robust REST APIs, HRIS, and asset management systems using Laravel.', 550000, 20, 2, 1);