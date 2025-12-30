CREATE DATABASE payroll_system;
USE payroll_system;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    base_salary INT
);

CREATE TABLE attendance (
    att_id INT PRIMARY KEY,
    emp_id INT,
    present_days INT,
    total_days INT,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

INSERT INTO employee VALUES
(1,'Amit',30000),
(2,'Neha',40000),
(3,'Raj',25000);

INSERT INTO attendance VALUES
(101,1,26,30),
(102,2,30,30),
(103,3,22,30);

-- Salary calculation based on attendance
SELECT 
e.emp_name,
e.base_salary,
a.present_days,
a.total_days,
ROUND((e.base_salary / a.total_days) * a.present_days) AS Final_Salary
FROM employee e
JOIN attendance a ON e.emp_id = a.emp_id;

-- Employees with low attendance
SELECT 
e.emp_name,
a.present_days
FROM employee e
JOIN attendance a ON e.emp_id = a.emp_id
WHERE a.present_days < 25;
