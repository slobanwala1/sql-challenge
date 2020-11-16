-- Create all 6 tables: employees, salaries, titles, departments, dept_emp, and dept_manager

-- Drop tables using CASCADE to remove dependencies as well
DROP TABLE IF EXISTS titles CASCADE;

DROP TABLE IF EXISTS employees CASCADE;

DROP TABLE IF EXISTS departments CASCADE;

DROP TABLE IF EXISTS salaries CASCADE;

DROP TABLE IF EXISTS dept_emp CASCADE;

DROP TABLE IF EXISTS dept_manager CASCADE;


CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(50) NOT NULL,
 	PRIMARY KEY(title_id)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_data DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(dept_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);



