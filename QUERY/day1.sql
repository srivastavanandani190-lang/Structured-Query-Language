CREATE DATABASE startersql; -- creates a new database named startersql
USE startersql; -- selects the database to use

-- creates a new table named users
CREATE TABLE users( 
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
gender ENUM('Male','Female','Other'),
date_of_birth DATE,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- displays all the data in the users table
SELECT * FROM users;

-- deletes the database and all its contents
DROP DATABASE startersql;

-- Selects the email and gender
SELECT email,gender from users;

-- renames the table users to programmers
RENAME TABLE users to programmers;

-- adds a new column named is_active to the programmers table
ALTER TABLE programmers ADD column is_active BOOLEAN DEFAULT true;
SELECT * FROM programmers;

-- drops the is_active column from the programmers table
ALTER TABLE programmers DROP COLUMN is_active;
SELECT * FROM programmers;

ALTER TABLE programmers MODIFY COLUMN name VARCHAR(150);
ALTER TABLE programmers MODIFY COLUMN date_of_birth DATETIME FIRST;
SELECT * FROM programmers;

-- Inserts multiple records into the programmers table
INSERT INTO programmers
(date_of_birth, name, email, gender)
VALUES
('2026-07-01','NANDANI', 'nandanihoney@gmail.com', 'Female'),
('2002-05-15','Rahul', 'rahul@gmail.com', 'Male'),
('2001-09-10','Priya', 'priya@gmail.com', 'Female'),
('2000-12-25','Aman', 'aman@gmail.com', 'Male'),
('1999-03-18','Sneha', 'sneha@gmail.com', 'Female');
SELECT * FROM programmers;
SELECT COUNT(*) FROM programmers;
