CREATE DATABASE startersql; --creates a new database named startersql

USE startersql; --selects the database to use

--creates a new table named users
CREATE TABLE users( 
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
gender ENUM('Male','Female','Other'),
date_of_birth DATE,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--displays all the data in the users table
SELECT * FROM users;

--deletes the database and all its contents
DROP DATABASE startersql;

