--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT EMP.emp_no, EMP.last_name, EMP.first_name, EMP.sex, SAL.salary
FROM employees as EMP
INNER JOIN salaries as SAL
ON EMP.emp_no = SAL.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT DM.dept_no, DP.dept_name, EMP.emp_no, EMP.last_name, EMP.first_name
FROM dept_manager as DM
INNER JOIN employees as EMP ON EMP.emp_no = DM.emp_no
INNER JOIN departments as DP ON DP.dept_no = DM.dept_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT DP.dept_name, EMP.emp_no, EMP.last_name, EMP.first_name
FROM dept_emp as DE
INNER JOIN employees as EMP ON EMP.emp_no = DE.emp_no
INNER JOIN departments as DP ON DP.dept_no = DE.dept_no

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT DE.dept_no, DP.dept_name, EMP.emp_no, EMP.last_name, EMP.first_name
FROM dept_emp as DE
INNER JOIN employees as EMP ON EMP.emp_no = DE.emp_no
INNER JOIN departments as DP ON DP.dept_no = DE.dept_no
WHERE dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT DE.dept_no, DP.dept_name, EMP.emp_no, EMP.last_name, EMP.first_name
FROM dept_emp as DE
INNER JOIN employees as EMP ON EMP.emp_no = DE.emp_no
INNER JOIN departments as DP ON DP.dept_no = DE.dept_no
WHERE dept_name IN ('Sales', 'Development')

