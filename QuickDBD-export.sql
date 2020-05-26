-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Titles (
    emp_no varchar(10)   NOT NULL,
    title varchar(30)   NOT NULL,
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL
);

CREATE TABLE Employees (
    emp_no varchar(10)   NOT NULL,
    birth_date varchar(10)   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    gender varchar(1)   NOT NULL,
    hire_date varchar(10)   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Departments (
    dept_no varchar(5)   NOT NULL,
    dept_name varchar(30)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE Dept_Emp (
    emp_no varchar(10)   NOT NULL,
    dept_no varchar(5)   NOT NULL,
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL
);

CREATE TABLE Dept_Manager (
    dept_no varchar(5)   NOT NULL,
    emp_no varchar(10)   NOT NULL,
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL
);

CREATE TABLE Salaries (
    emp_no varchar(10)   NOT NULL,
    salary integer   NOT NULL,
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        emp_no
     )
);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);


SELECT * FROM Departments;
SELECT * FROM Dept_emp;
SELECT * FROM Dept_manager;
SELECT * FROM Employees;
SELECT * FROM Salaries;
SELECT * FROM Titles;


