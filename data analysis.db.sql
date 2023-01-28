SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e INNER JOIN salaries AS s ON s.emp_no = e.emp_no


SELECT * FROM employees where hire_date BETWEEN '1986-01-01' AND '1986-12-31'


SELECT d_man.dept_no, d.dept_name, d_man.emp_no, e.last_name, e.first_name, e.hire_date
FROM dept_manager AS d_man JOIN departments AS d ON d.dept_no = d_man.dept_no
JOIN employees AS e ON e.emp_no = d_man.emp_no;


SELECT d.dept_no,e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS d_emp ON e.emp_no = d_emp.emp_no
LEFT JOIN departments AS d ON d.dept_no = d_emp.dept_no


SELECT * FROM employees 
WHERE first_name='Hercules' AND last_name LIKE 'B%'


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e INNER JOIN dept_emp AS d_emp ON e.emp_no = d_emp.emp_no
INNER JOIN departments AS d ON d_emp.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e 
INNER JOIN dept_emp AS d_emp ON e.emp_no = d_emp.emp_no
INNER JOIN departments AS d ON d_emp.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'


SELECT last_name, count(last_name) AS "Last_Name_Frequency" 
FROM employees
GROUP BY last_name
ORDER BY Last_Name_Frequency DESC;