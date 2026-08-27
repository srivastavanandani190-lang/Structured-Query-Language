CREATE DATABASE IF NOT EXISTS CollegeDB;

-- Select the database
USE CollegeDB;

-- Create Requirement table
CREATE TABLE Requirement (
    credit INT PRIMARY KEY
);
-- Create Grad_Candidates table
CREATE TABLE Grad_Candidates (
    student_id VARCHAR(9) PRIMARY KEY,
    lastname VARCHAR(10),
    firstname VARCHAR(10),
    credit INT,

    CONSTRAINT fk_grad_student
    FOREIGN KEY (credit)
    REFERENCES Requirement(credit)
);
CREATE TABLE o_grad_candidates AS
SELECT *
FROM grad_candidates;
CREATE TABLE honey_table AS
SELECT *
FROM grad_candidates;
ALTER TABLE o_grad_candidates
ADD COLUMN adm_date VARCHAR(30) DEFAULT (CURRENT_TIMESTAMP);
DESCRIBE o_grad_candidates;
