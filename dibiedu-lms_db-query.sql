CREATE TABLE `users` (
  `id` char(36) PRIMARY KEY COMMENT 'UUID',
  `name` varchar(255),
  `email` varchar(255) UNIQUE NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) COMMENT 'enum: student, instructor, admin',
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp COMMENT 'For soft delete'
);

CREATE TABLE `course_categories` (
  `id` char(36) PRIMARY KEY COMMENT 'UUID',
  `name` varchar(255),
  `description` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp COMMENT 'For soft delete'
);

CREATE TABLE `courses` (
  `id` char(36) PRIMARY KEY COMMENT 'UUID',
  `title` varchar(255),
  `description` text,
  `price` decimal,
  `quota` integer,
  `instructor_id` char(36) NOT NULL,
  `category_id` char(36) NOT NULL,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp COMMENT 'For soft delete'
);

CREATE TABLE `lessons` (
  `id` char(36) PRIMARY KEY COMMENT 'UUID',
  `course_id` char(36) NOT NULL,
  `title` varchar(255),
  `content` text,
  `sequence_number` integer,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp COMMENT 'For soft delete'
);

CREATE TABLE `enrollments` (
  `id` char(36) PRIMARY KEY COMMENT 'UUID',
  `student_id` char(36) NOT NULL,
  `course_id` char(36) NOT NULL,
  `progress_percentage` decimal,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp COMMENT 'For soft delete'
);

ALTER TABLE `courses` ADD FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`category_id`) REFERENCES `course_categories` (`id`);

ALTER TABLE `lessons` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `enrollments` ADD FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

ALTER TABLE `enrollments` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);
