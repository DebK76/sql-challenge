--List the employee number, last name, first name, sex, and salary of each employee.
SELECT 
 e.emp_no,
 e.last_name,
 e.first_name,
 e.sex,
 s.salary,
 CONCAT('$', TO_CHAR(s.salary, '000,000')) AS "salary" 
 
FROM
 employees e
JOIN
 salaries s ON e.emp_no = s.emp_no;
 
-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT 
  first_name,
  last_name,
  hire_date
FROM
  employees
WHERE
  hire_date >= '1986-01-01'
  AND hire_date < '1987-01-01';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT 
 d.dept_no,
 d.dept_name,
 dm.emp_no,
 e.last_name,
 e.first_name
FROM
 departments d
JOIN 
 dept_manager dm ON d.dept_no = dm.dept_no
JOIN 
 employees e ON dm.emp_no = e.emp_no;
 