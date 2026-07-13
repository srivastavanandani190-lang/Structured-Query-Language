-- ==========================================================
-- DATABASE SETUP
-- ==========================================================

CREATE DATABASE IF NOT EXISTS startersql;
USE startersql;

-- ==========================================================
-- CREATE USERS TABLE
-- ==========================================================

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ==========================================================
-- INSERT SAMPLE USERS
-- ==========================================================

INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Aarav','aarav@example.com','Male','1995-05-14',65000),
('Ananya','ananya@example.com','Female','1990-11-23',72000),
('Raj','raj@example.com','Male','1988-02-17',58000),
('Sneha','sneha@example.com','Female','2000-08-09',50000),
('Farhan','farhan@example.com','Male','1993-12-30',61000),
('Priyanka','priyanka@example.com','Female','1985-07-12',84000),
('Aisha','aisha@example.com','Female','1997-03-25',56000),
('Aditya','aditya@example.com','Male','1992-06-17',69000),
('Meera','meera@example.com','Female','1989-09-05',77000),
('Ishaan','ishaan@example.com','Male','2001-10-02',45000),
('Tanvi','tanvi@example.com','Female','1994-04-18',62000),
('Rohan','rohan@example.com','Male','1986-12-01',75000),
('Zoya','zoya@example.com','Female','1998-01-15',54000),
('Karan','karan@example.com','Male','1990-08-22',68000),
('Nikita','nikita@example.com','Female','1987-03-10',71000),
('Manav','manav@example.com','Male','1996-11-29',61000),
('Divya','divya@example.com','Female','1991-02-28',57000),
('Harshit','harshit@example.com','Male','1993-09-09',65000),
('Ritika','ritika@example.com','Female','1999-05-05',52000),
('Imran','imran@example.com','Male','1995-07-30',63000),
('Juhi','juhi@example.com','Female','1992-10-14',59000),
('Tushar','tushar@example.com','Male','1990-01-08',73000),
('Lata','lata@example.com','Female','1984-11-11',78000),
('Yash','yash@example.com','Male','1997-06-06',64000),
('Fatima','fatima@example.com','Female','1993-03-03',55000);

-- ==========================================================
-- CREATE ADMIN USERS TABLE
-- ==========================================================

CREATE TABLE admin_users (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    gender ENUM('Male','Female','Other'),
    date_of_birth DATE,
    salary DECIMAL(10,2)
);

-- ==========================================================
-- INSERT SAMPLE ADMINS
-- ==========================================================

INSERT INTO admin_users
(id, name, email, gender, date_of_birth, salary)
VALUES
(101,'Anil Kumar','anil@example.com','Male','1985-04-12',60000),
(102,'Pooja Sharma','pooja@example.com','Female','1992-09-20',58000),
(103,'Rakesh Yadav','rakesh@example.com','Male','1989-11-05',54000),
(104,'Yash','yash@example.com','Male','1997-06-06',64000),
(105,'Fatima Begum','fatima@example.com','Female','1990-06-30',62000);

-- ==========================================================
-- UNION ALL EXAMPLE
-- Combines records from both tables.
-- Duplicate rows are NOT removed.
-- ==========================================================

SELECT name,email,gender,date_of_birth FROM users
UNION ALL
SELECT name,email,gender,date_of_birth FROM admin_users;