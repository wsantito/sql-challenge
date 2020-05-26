SELECT * FROM Salaries;
SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM Dept_emp;
SELECT * FROM Dept_manager;
SELECT * FROM Titles;

--1.- List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, Salaries.salary
FROM employees
JOIN salaries --as salary
on employees.emp_no = salaries.emp_no

--2.- List employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE  '1986%'

--3.- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM departments
JOIN dept_manager --as ...
on departments.dept_no = dept_manager.dept_no
JOIN employees --as ...
on dept_manager.emp_no = employees.emp_no

--4.- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp --as ...
on employees.emp_no = dept_emp.emp_no
JOIN departments --as ...
on dept_emp.dept_no = departments.dept_no



--5.- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Hercules') and last_name  LIKE 'B%';

--6.- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Hercules') and last_name  LIKE 'B%';

--7.- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp --as ...
on employees.emp_no = dept_emp.emp_no
JOIN departments --as ...
on dept_emp.dept_no = departments.dept_no
WHERE dept_name IN ('Sales')

--8.- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT (last_name) AS "last_name count"
FROM employees
GROUP BY last_name
ORDER BY "last_name count" DESC;

--********BONUS********
SELECT *
FROM employees
WHERE emp_no LIKE  '499942'

