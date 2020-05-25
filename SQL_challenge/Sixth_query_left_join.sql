--6.List all employees in the Sales department, 
--including their employee number, last name,
--first name, and department name.

SELECT	dept_emp.emp_no,
		employees.last_name,
		departments.dept_name
FROM	dept_emp 
LEFT JOIN departments on dept_emp.dept_no = departments.dept_no
LEFT JOIN employees on employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales';
		