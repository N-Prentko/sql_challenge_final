-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Departments (
    dept_no VARCHAR(255)   NOT NULL,
    dept_name VARCHAR(255)   NOT NULL,
    PRIMARY KEY (dept_no, dept_name)
);

SELECT * FROM Departments;

CREATE TABLE Dept_emp (
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR(255)   NOT NULL
);

SELECT * FROM Dept_emp

CREATE TABLE Dept_manager (
    dept_no VARCHAR(255)   NOT NULL,
    emp_no INTEGER   NOT NULL
);

SELECT * FROM Dept_manager;

CREATE TABLE Employees (
    emp_no INTEGER   NOT NULL,
    emp_title_id VARCHAR(255)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    sex VARCHAR(255)   NOT NULL,
    hire_date Date   NOT NULL,
    PRIMARY KEY (emp_no)
);

SELECT * FROM Employees

CREATE TABLE Salaries (
    emp_no INTEGER   NOT NULL,
    salary INTEGER   NOT NULL
);

SELECT * FROM Salaries;

CREATE TABLE Titles (
    title_id VARCHAR(255)   NOT NULL,
    title VARCHAR(255)   NOT NULL
);

SELECT * FROM Titles;
