--2.List first name, last name, and hire date 
--for employees who were hired in 1986.
	
SELECT Employees.first_name, Employees.last_name, Employees.hire_date
FROM Employees
WHERE hire_date > '1985-12-31'
AND hire_date < '1987-01-01'