-- 1. Create a Departments table
CREATE TABLE departments (
    depart_no VARCHAR PRIMARY KEY,
    depart_name VARCHAR(30) NOT NULL
);
--Import CSV
SELECT * FROM departments

-- 2. Create Employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    birth_date DATE,
    first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);
--Import CSV
SELECT * FROM employees

-- 3. Create Department Manager table
CREATE TABLE department_manager (
    depart_no VARCHAR,
    emp_no INT,
	from_date DATE,
	to_date DATE
);
--Import CSV
SELECT * FROM department_manager

-- 4. Create Department Employee table
CREATE TABLE department_employee (
    emp_no INT,
	dept_no VARCHAR,
	from_date DATE,
	to_date DATE
);
--Import CSV
SELECT * FROM department_employee

-- 5. Create Salaries table
CREATE TABLE salaries (
    emp_no INT,
	salaries INT,
	from_date DATE,
	to_date DATE
);
--Import CSV
SELECT * FROM salaries

-- 5. Create Titles table
CREATE TABLE titles (
    emp_no INT,
	titles VARCHAR,
	from_date DATE,
	to_date DATE
);
--Import CSV
SELECT * FROM titles