--4.List the department of each employee with the 
--following information: employee number, last name, first name, and department name.

SELECT	employees.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name

FROM	employees
LEFT JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no;