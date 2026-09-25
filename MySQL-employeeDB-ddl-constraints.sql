CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments(
	department_id int PRIMARY KEY,
    department_name VARCHAR(100)
    );

CREATE TABLE Location(
	location_id INT,
    location VARCHAR(30)
    );
    
CREATE TABLE employees(
	employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender enum('Female','Male'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
	);
    
INSERT INTO employees 
VALUES (100, 'SHA','Female',14,'2008-07-21',"IT",1001,400,12000.57);

SELECT * FROM employees;
   
ALTER TABLE employees ADD email VARCHAR(100);
SELECT * FROM employees;
ALTER TABLE employees MODIFY COLUMN designation LONGTEXT;
ALTER TABLE employees DROP COLUMN age;
ALTER TABLE employees RENAME COLUMN hire_date TO date_of_joining;

ALTER TABLE Location 
RENAME TO Locations;
    
ALTER TABLE Departments 
RENAME TO Departments_info;
   
TRUNCATE TABLE employees;
   
DROP TABLE employees;
DROP DATABASE employee;
    
-- Drop the 'employee' database if it exists

DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;
    
USE employee;
    
CREATE TABLE Departments_info(
	department_id int PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
    );

CREATE TABLE Location(
	location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL UNIQUE
    );
    
CREATE TABLE employees(
	employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender enum('M','F'),
    age INT CHECK(age>=18),
    hire_date DATE DEFAULT(current_date),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES Departments_info (department_id),
    FOREIGN KEY (location_id) REFERENCES Location (location_id)
	);
    
    