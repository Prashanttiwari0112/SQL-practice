CREATE DATABASE analytics;
USE analytics;

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO department VALUES
(1,'HR'),(2,'IT'),(3,'Sales');

INSERT INTO employee VALUES
(101,'Aman',18000,2),
(102,'Ravi',12000,1),
(103,'Neha',25000,2),
(104,'Simran',9000,3),
(105,'Kunal',15000,3);

-- Salary classification (HR loves this)
SELECT 
emp_name,
salary,
CASE 
  WHEN salary >= 20000 THEN 'High Performer'
  WHEN salary >= 12000 THEN 'Average Performer'
  ELSE 'Needs Improvement'
END AS Performance_Level
FROM employee;

-- Department wise average salary
SELECT 
d.dept_name,
AVG(e.salary) AS Avg_Salary
FROM department d
JOIN employee e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- Employees earning above company average
SELECT emp_name, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);
