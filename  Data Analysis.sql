--1. List the following details of each employee: employee number, last name, 
--first name, gender, and salary.
SELECT 
	employees.emp_no,
 	employees.last_name, 	
	employees.first_name, 	
	employees.gender, 	
	salaries.salaries
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

--2. List employees who were hired in 1986.
SELECT
	first_name, 	
	last_name, 	
	hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--3. List the manager of each department with the following information:
--department number, department name, the manager's employee number,
--last name, first name, and start and end employment dates.

SELECT 
	departments.depart_no, 
	departments.depart_name, 	
	department_manager.emp_no, 
	employees.last_name, 
	employees.first_name, 
	department_manager.from_date, 
	department_manager.to_date
FROM departments
JOIN department_manager
ON departments.depart_no = department_manager.depart_no
JOIN employees
ON department_manager.emp_no = employees.emp_no;

--4. List the department of each employee with the following information:
--employee number, last name, first name, and department name.
SELECT 
	department_employee.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.depart_name
FROM department_employee
JOIN employees
ON department_employee.emp_no = employees.emp_no
JOIN departments
ON department_employee.dept_no = departments.depart_no;

--5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT 
	first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number,
--last name, first name, and department name.
SELECT 
	department_employee.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.depart_name
FROM department_employee
JOIN employees
ON department_employee.emp_no = employees.emp_no
JOIN departments
ON department_employee.dept_no = departments.depart_no
WHERE departments.depart_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, 
--including their employee number,last name, first name, and department name.
SELECT 
department_employee.emp_no, 
employees.last_name, 
employees.first_name, 
departments.depart_name
FROM department_employee
JOIN employees
ON department_employee.emp_no = employees.emp_no
JOIN departments
ON department_employee.dept_no = departments.depart_no
WHERE departments.depart_name = 'Sales' 
OR departments.depart_name = 'Development';


-- 8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;