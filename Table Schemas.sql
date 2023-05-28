
CREATE TABLE titles(
    title_id varchar(5) NOT NULL,
    title varchar(30),
    PRIMARY KEY (title_id));

select *
from titles

CREATE TABLE departments(
    dept_no varchar(4) NOT NULL,
    dept_name varchar(30),
    PRIMARY KEY (dept_no));

select *
from departments
DROP TABLE employees cascade

CREATE TABLE employees(
    emp_no varchar(6) NOT NULL,
    emp_title_id varchar(5),
    birth_date varchar(15),
    first_name varchar(30),
    last_name varchar(30),
    sex varchar(1),
    hire_date varchar(15),
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));

select *
from employees

CREATE TABLE dept_manager(
    dept_no varchar(4) NOT NULL,
    emp_no varchar(6) NOT NULL,
    primary key (dept_no,emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

select *
from dept_manager

CREATE TABLE dept_emp(
    emp_no varchar(6) NOT NULL,
    dept_no varchar(4) NOT NULL,
    primary key (dept_no,emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

select *
from dept_emp

CREATE TABLE salaries(
    emp_no varchar(6) NOT NULL,
    salary  int,
    primary key (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
select *
from salaries	