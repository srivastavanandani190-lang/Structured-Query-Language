-- Create Database
CREATE DATABASE IF NOT EXISTS Company;

-- Select Database
USE Company;

-- Create EMP Table
CREATE TABLE EMP (
    Ename VARCHAR(20) PRIMARY KEY,
    Enum INT,
    Edipt INT,
    Esal INT,
    EAddress VARCHAR(100),
    EPh BIGINT,
    Email VARCHAR(50),
    Job VARCHAR(30),
    Hiredate DATE
);

-- Create DEPT Table
CREATE TABLE DEPT (
    Dnum INT PRIMARY KEY,
    Dname VARCHAR(50),
    Dloc VARCHAR(50)
);

-- Insert data into EMP
INSERT INTO EMP
(Ename, Enum, Edipt, Esal, EAddress, EPh, Email, Job, Hiredate)
VALUES
('SMITH',  7369, 10, 1500, 'Delhi',   9876543210, 'smith@gmail.com',  'MANAGER',  '1980-12-17'),
('ALLEN',  1002, 20, 1250, 'Mumbai',  9876543211, 'allen@gmail.com',  'SALESMAN', '1981-02-20'),
('WARD',   1003, 20, 800,  'Pune',    9876543212, 'ward@gmail.com',   'CLERK',    '1981-02-22'),
('JONES',  7788, 30, 2975, 'Chennai', 9876543213, 'jones@gmail.com',  'MANAGER',  '1981-04-02'),
('MARTIN', 1005, 30, 1600, 'Kolkata', 9876543214, 'martin@gmail.com', 'SALESMAN', '1981-09-28'),
('SCOTT',  1006, 20, 3000, 'Jaipur',  9876543215, 'scott@gmail.com',  'ANALYST',  '1981-04-02'),
('MILLER', 7521, 10, 950,  'Lucknow', 9876543216, 'miller@gmail.com', 'CLERK',    '1980-01-23'),
('JAMES',  7839, 20, 1100, 'Noida',   9876543217, 'james@gmail.com',  'CLERK',    '1981-09-15'),
('BLAKE',  1009, 30, 2850, 'Bhopal',  9876543218, 'blake@gmail.com',  'MANAGER',  '1981-05-01'),
('FORD',   7934, 40, 1300, 'Indore',  9876543219, 'ford@gmail.com',   'ANALYST',  '1981-10-10');

-- Insert data into DEPT
INSERT INTO DEPT
(Dnum, Dname, Dloc)
VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');
-- Display EMP table
SELECT * FROM EMP;
-- Display DEPT table
SELECT * FROM DEPT;
 
SELECT Dname ,Dloc FROM DEPT;

SELECT *FROM EMP WHERE Edipt=20;

SELECT Ename , Esal FROM EMP WHERE Esal>1000;

SELECT Enum ,Ename FROM EMP WHERE Job='MANAGER';

SELECT Ename FROM EMP WHERE Job='CLERK' AND Edipt=20;
-- SELECT Ename FROM EMP WHERE Job='ANALYST' OR Job='SALESMAN';
SELECT Ename FROM EMP WHERE Job IN ('ANALYST','SALESMAN');

SELECT *FROM EMP WHERE Hiredate<'1981-09-01';

SELECT Ename FROM EMP WHERE Job NOT IN ('MANAGER');

SELECT Ename
FROM EMP
WHERE Enum IN (7369, 7521, 7839, 7934, 7788);
SELECT *
FROM EMP
WHERE Edipt NOT IN (10, 30, 40);
SELECT Ename, Esal
FROM EMP
WHERE Esal BETWEEN 1000 AND 2000;
SELECT Ename
FROM EMP
WHERE Hiredate < '1981-06-30'
   OR Hiredate > '1981-12-31';
SELECT DISTINCT Job
FROM EMP;