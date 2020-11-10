
CREATE TABLE employees (
    emp_no INT   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(40)   NOT NULL,
    last_name VARCHAR(40)   NOT NULL,
    gender VARCHAR(1)   NOT NULL,
    hire_date DATE   NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE departaments (
    dept_no VARCHAR(15)   NOT NULL,
    dept_name VARCHAR(30)   NOT NULL,
    PRIMARY KEY (dept_no)
);


CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(15)   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departaments(dept_no)
);


CREATE TABLE dept_manager (
	dept_no VARCHAR(15)   NOT NULL,
    emp_no INT  NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departaments(dept_no)
);


CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary DECIMAL   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
    emp_no INT   NOT NULL,
    title VARCHAR(100)   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
