DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;

--create all Table for Employee,departments,dept_emp,dept_manager,titles,salaries
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(5),
	hire_date DATE	
);

CREATE TABLE departments(
	dept_no CHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no CHAR(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no CHAR(10),
	emp_no INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE titles(
	title_id CHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR(30) 
);	

CREATE TABLE salaries(
	emp_no INT,
	salaries INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--check the tables
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM titles;
SELECT * FROM salaries;
