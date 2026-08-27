-- Create database
CREATE DATABASE CompanyDB;

-- Select database
USE CompanyDB;


-- 1. Create EMPLOYEE table
CREATE TABLE EMPLOYEE (
    Empname VARCHAR(50),
    Empid INT PRIMARY KEY,
    Manager VARCHAR(50),
    Empemail VARCHAR(100),
    Empdept VARCHAR(50)
);


-- 2. Insert 5 rows
INSERT INTO EMPLOYEE (Empname, Empid, Manager, Empemail, Empdept)
VALUES
('Rahul', 101, 'Amit', 'rahul@gmail.com', 'IT'),
('Priya', 102, 'Neha', 'priya@gmail.com', 'HR'),
('Aman', 103, 'Raj', 'aman@gmail.com', 'Finance'),
('Sneha', 104, 'Vikas', 'sneha@gmail.com', 'IT'),
('Rohan', 105, 'Karan', 'rohan@gmail.com', 'Sales');


-- Display table
SELECT * FROM EMPLOYEE;


-- 3. Add EmpDOB column
ALTER TABLE EMPLOYEE
ADD EmpDOB DATE;


-- 4. Update DOB of employees
UPDATE EMPLOYEE
SET EmpDOB = '2002-05-10'
WHERE Empid = 101;

UPDATE EMPLOYEE
SET EmpDOB = '2001-08-15'
WHERE Empid = 102;

UPDATE EMPLOYEE
SET EmpDOB = '2002-01-20'
WHERE Empid = 103;

UPDATE EMPLOYEE
SET EmpDOB = '2001-11-25'
WHERE Empid = 104;

UPDATE EMPLOYEE
SET EmpDOB = '2002-03-12'
WHERE Empid = 105;


-- Display updated table
SELECT * FROM EMPLOYEE;


-- 5. Delete employees with Empid 102 and 105
DELETE FROM EMPLOYEE
WHERE Empid IN (102, 105);


-- Display table after deletion
SELECT * FROM EMPLOYEE;


-- 6. Change Empid datatype from INT to VARCHAR
ALTER TABLE EMPLOYEE
MODIFY Empid VARCHAR(10);


-- Final output
SELECT * FROM EMPLOYEE;