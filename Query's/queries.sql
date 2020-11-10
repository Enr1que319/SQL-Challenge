
--1.-List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT EM.emp_no, EM.last_name, EM.first_name, EM.gender, SA.salary
FROM employees AS EM
INNER JOIN salaries AS SA 
ON EM.emp_no = SA.emp_no
ORDER BY SA.salary DESC;


--2.-List employees who were hired in 1986
SELECT * FROM employees
WHERE hire_date BETWEEN ('1986-01-01') AND ('1986-12-31')
ORDER BY hire_date ASC;


--3.-List the manager of each department with the following information: department number, department name, 
--   the manager's employee number, last name, first name, and start and end employment dates.
SELECT DM.dept_no, DP.dept_name, DM.emp_no, EM.last_name, EM.first_name, DM.from_date, DM.to_date 
FROM dept_manager AS DM
INNER JOIN employees AS EM ON EM.emp_no = DM.emp_no
INNER JOIN departaments AS DP  ON DP.dept_no = DM.dept_no


--4.-List the department of each employee with the following information: employee number, last name, 
--   first name, and department name.
SELECT EM.emp_no, EM.last_name, EM.first_name, DP.dept_name
FROM employees AS EM
INNER JOIN dept_emp AS DE
ON EM.emp_no = DE.emp_no
INNER JOIN departaments AS DP
ON DE.dept_no = DP.dept_no
ORDER BY EM.emp_no ASC;


--5.-List all employees whose first name is "Hercules" and last names begin with "B." 
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE ('B%')


--6.-List all employees in the Sales department, including their employee number, last name, 
--   first name, and department name.
SELECT EM.emp_no, EM.last_name, EM.first_name, DP.dept_name
FROM employees AS EM
INNER JOIN dept_emp AS DE
ON EM.emp_no = DE.emp_no
INNER JOIN departaments AS DP
ON DE.dept_no = DP.dept_no
WHERE DP.dept_name = 'Sales'
ORDER BY EM.emp_no ASC;

--7.-List all employees in the Sales and Development departments, including their employee number, 
--   last name, first name, and department name.
SELECT EM.emp_no, EM.last_name, EM.first_name, DP.dept_name
FROM employees AS EM
INNER JOIN dept_emp AS DE
ON EM.emp_no = DE.emp_no
INNER JOIN departaments AS DP
ON DE.dept_no = DP.dept_no
WHERE DP.dept_name = 'Sales' OR DP.dept_name = 'Development'
ORDER BY EM.emp_no ASC;


--8.-In descending order, list the frequency count of employee last names, i.e., how many employees 
--   share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC



