-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "dept_no" Varchar(255)   NOT NULL,
    "dept_name" Varchar(255)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no","dept_name"
     )
);

CREATE TABLE "Dept_emp" (
    "emp_no" Int   NOT NULL,
    "dept_no" Varchar(255)   NOT NULL
);

CREATE TABLE "Dept_manager" (
    "dept_no" Varchar(255)   NOT NULL,
    "emp_no" Int   NOT NULL
);

CREATE TABLE "Employees" (
    "emp_no" Int   NOT NULL,
    "emp_title_id" Varchar(255)   NOT NULL,
    "birth_date" Date   NOT NULL,
    "first_name" Varchar(255)   NOT NULL,
    "last_name" Varchar(255)   NOT NULL,
    "sex" Varchar(255)   NOT NULL,
    "hire_date" Date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" Int   NOT NULL,
    "salary" Int   NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" Varchar(255)   NOT NULL,
    "title" Varchar(255)   NOT NULL
);

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Dept_manager" ("dept_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no_dept_no" FOREIGN KEY("emp_no", "dept_no")
REFERENCES "Dept_manager" ("emp_no", "dept_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Salaries" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Dept_manager" ("emp_no");

