SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
LEFT JOIN salaries s
ON s.emp_no = e.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees e
WHERE EXTRACT(year from hire_date) = 1986

SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM dept_manager m
LEFT JOIN departments d
ON d.dept_no = m.dept_no
LEFT JOIN employees e
ON e.emp_no = m.emp_no;

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN departments d
ON d.dept_no = de.dept_no
LEFT JOIN employees e
ON e.emp_no = de.emp_no;

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN departments d
ON d.dept_no = de.dept_no
LEFT JOIN employees e
ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Sales';

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN departments d
ON d.dept_no = de.dept_no
LEFT JOIN employees e
ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

SELECT last_name, COUNT(first_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;