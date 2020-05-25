SELECT 
	employees.emp_no AS employee, 
	last_name, 
	first_name, 
	sex, 
	salary 
FROM employees LEFT JOIN salaries 
ON employees.emp_no = salaries.emp_no
ORDER BY last_name, first_name, employee;