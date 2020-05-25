--8.In descending order, list the frequency count of employee
--last names, i.e., how many employees share each last name.

SELECT	employees.last_name, COUNT (employees.last_name)
FROM employees
GROUP BY employees.last_name
ORDER BY COUNT DESC;