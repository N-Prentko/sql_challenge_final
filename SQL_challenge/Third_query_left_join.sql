--3. List the manager of each department with the following information: department number, department name, the manager's employee number, 
--last name, first name

SELECT dept_manager.dept_no, 
	   departments.dept_name,
	   dept_manager.emp_no,
	   employees.last_name,
	   employees.first_name
FROM   dept_manager
LEFT JOIN departments ON 
departments.dept_no = dept_manager.dept_no
LEFT JOIN employees ON
employees.emp_no = dept_manager.emp_no;