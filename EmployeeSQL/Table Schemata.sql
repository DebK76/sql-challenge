-- Data Engineering Portion

-- Create "departments" table
CREATE TABLE departments (
  dept_no CHAR(7) NOT NULL,
  dept_name VARCHAR(40) NOT NULL,
  PRIMARY KEY (dept_no),
  UNIQUE (dept_name)
);

SELECT * FROM departments 

-- Create "dept_emp" table
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(10) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
  PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp

-- Create "dept_manager" table
CREATE TABLE dept_manager (
  dept_no VARCHAR(10) NOT NULL,
  emp_no INT NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

SELECT * FROM dept_manager

-- Create "employees" table
CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id VARCHAR(5) NOT nULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  sex VARCHAR NOT NULL,
  hire_date DATE NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
  PRIMARY KEY (emp_no)
);

SELECT * FROM employees

-- Create "salaries" table
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  ---from_date DATE NOT NULL,
  ---to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

SELECT * FROM public.salaries

-- Create "titles" table
CREATE TABLE titles (
  title_id VARCHAR(7) NOT NULL,
  title VARCHAR(50) NOT NULL,
  PRIMARY KEY (title_id),
  UNIQUE (title) 
);

SELECT * FROM titles