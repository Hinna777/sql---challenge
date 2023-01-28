
CREATE DATABASE employee

CREATE TABLE titles(
	title_id VARCHAR(20) PRIMARY KEY,
	title VARCHAR(50)
);


CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(20),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);


CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE departments(
	dept_no VARCHAR(20) PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL
)


CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR(20),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	CONSTRAINT cpk PRIMARY KEY (emp_no,dept_no)
)


CREATE TABLE dept_manager(
	dept_no VARCHAR(20),
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	CONSTRAINT cpk2 PRIMARY KEY (emp_no,dept_no)
)


BULK INSERT titles FROM 'C:\Users\Personel\Desktop\m9-starter-code (5)\m9-starter-code\data\titles.csv'
WITH (
	format='CSV',
	FirstRow = 2,
	FieldTerminator = ',',
	RowTerminator = '\n'
)


BULK INSERT employees FROM 'C:\Users\Personel\Desktop\m9-starter-code (5)\m9-starter-code\data\employees.csv'
WITH (
	format='CSV',
	FirstRow = 2,
	FieldTerminator = ',',
	RowTerminator = '\n'
)


BULK INSERT salaries FROM 'C:\Users\Personel\Desktop\m9-starter-code (5)\m9-starter-code\data\salaries.csv'
WITH (
	format='CSV',
	FirstRow = 2,
	FieldTerminator = ',',
	RowTerminator = '\n'
)


BULK INSERT departments FROM 'C:\Users\Personel\Desktop\m9-starter-code (5)\m9-starter-code\data\departments.csv'
WITH (
	format='CSV',
	FirstRow = 2,
	FieldTerminator = ',',
	RowTerminator = '0x0a'
)


BULK INSERT dept_emp FROM 'C:\Users\Personel\Desktop\m9-starter-code (5)\m9-starter-code\data\dept_emp.csv'
WITH (
	format='CSV',
	FirstRow = 2,
	FieldTerminator = ',',
	RowTerminator = '\n'
)


BULK INSERT dept_manager FROM 'C:\Users\Personel\Desktop\m9-starter-code (5)\m9-starter-code\data\dept_manager.csv'
WITH (
	format='CSV',
	FirstRow = 2,
	FieldTerminator = ',',
	RowTerminator = '\n'
)