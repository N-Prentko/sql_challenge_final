--7.List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT	dept_emp.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
FROM departments
LEFT JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
LEFT JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';	