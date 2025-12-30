CREATE DATABASE hr_analytics;
USE hr_analytics;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    experience INT,
    salary INT,
    job_satisfaction INT
);

INSERT INTO employee VALUES
(1,'Amit',1,12000,2),
(2,'Rohit',5,45000,4),
(3,'Neha',2,15000,1),
(4,'Karan',7,60000,5),
(5,'Simran',3,18000,2);

-- Attrition Risk Logic
SELECT 
emp_name,
experience,
salary,
job_satisfaction,
CASE
  WHEN job_satisfaction <= 2 AND salary < 20000 THEN 'High Risk'
  WHEN job_satisfaction <= 3 THEN 'Medium Risk'
  ELSE 'Low Risk'
END AS Attrition_Risk
FROM employee;
