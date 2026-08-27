-- CREATE DATABASE SL;

-- USE SL;

-- CREATE TABLE Student (
--     fname VARCHAR(10),
--     lname VARCHAR(10),
--     Rollno INT PRIMARY KEY,
--     Mobno VARCHAR(15),
--     Address VARCHAR(50)
-- );

-- INSERT INTO Student
-- (fname, lname, Rollno, Mobno, Address)
-- VALUES
-- ('honey', 'srivastava', 101, '9876543210', 'Delhi'),
-- ('honey', 'srivastava', 102, '9876543210', 'Delhi'),
-- ('honey', 'srivastava', 103, '9876543210', 'Delhi'),
-- ('honey', 'srivastava', 104, '9876543210', 'Delhi');
ALTER TABLE Student
ADD COLUMN BIT BIT;
UPDATE Student
SET email='abes@gmail.com'
WHERE rollno=1;