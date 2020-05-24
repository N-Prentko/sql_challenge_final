-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "dept_name" Varchar   NOT NULL,
    "dept_no" Varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_name","dept_no"
     )
);

CREATE TABLE "Departments_Employees" (
    "emp_no" Int   NOT NULL,
    "dept_no" Varchar   NOT NULL,
    CONSTRAINT "pk_Departments_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Department_Manager" (
    "dept_no" Varchar   NOT NULL,
    "emp_no" Int   NOT NULL
);

CREATE TABLE "Employee_Data" (
    "emp_title" Varchar   NOT NULL,
    "emp_no" Int   NOT NULL,
    "birth_date" Int   NOT NULL,
    "first_name" Varchar   NOT NULL,
    "last_name" Varchar   NOT NULL,
    "sex" Varchar   NOT NULL,
    "hire_date" Int   NOT NULL,
    CONSTRAINT "pk_Employee_Data" PRIMARY KEY (
        "emp_title","emp_no","birth_date","first_name","last_name","sex","hire_date"
     )
);

CREATE TABLE "Salaries" (
    "salary" Int   NOT NULL,
    "emp_no" Int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "salary"
     )
);

CREATE TABLE "Titles" (
    "title_id" Varchar   NOT NULL,
    "title" Varchar   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id","title"
     )
);

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Department_Manager" ("dept_no");

ALTER TABLE "Departments_Employees" ADD CONSTRAINT "fk_Departments_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Salaries" ("emp_no");

ALTER TABLE "Departments_Employees" ADD CONSTRAINT "fk_Departments_Employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee_Data" ("emp_no");

ALTER TABLE "Employee_Data" ADD CONSTRAINT "fk_Employee_Data_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Salaries" ("emp_no");

