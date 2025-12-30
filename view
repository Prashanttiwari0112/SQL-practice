CREATE DATABASE report_db;
USE report_db;

CREATE TABLE dept (
    dno INT PRIMARY KEY,
    dname VARCHAR(50)
);

CREATE TABLE emp (
    eid INT PRIMARY KEY,
    ename VARCHAR(50),
    salary INT,
    dno INT,
    FOREIGN KEY (dno) REFERENCES dept(dno)
);

INSERT INTO dept VALUES (1,'IT'),(2,'Finance');
INSERT INTO emp VALUES
(1,'Rohit',22000,1),
(2,'Ankit',18000,1),
(3,'Sonal',25000,2);

-- Create VIEW
CREATE VIEW company_salary_report AS
SELECT 
e.ename,
e.salary,
d.dname AS Department
FROM emp e
JOIN dept d ON e.dno = d.dno;

-- Use VIEW
SELECT * FROM company_salary_report;
