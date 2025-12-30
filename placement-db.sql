CREATE DATABASE placement_db;
USE placement_db;

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    cgpa DECIMAL(3,2),
    backlogs INT,
    skills VARCHAR(100)
);

INSERT INTO student VALUES
(1,'Raj',8.2,0,'C++,DSA,SQL'),
(2,'Amit',6.5,2,'Java,SQL'),
(3,'Pooja',9.0,0,'Python,ML'),
(4,'Neha',7.1,1,'Web Dev'),
(5,'Karan',8.5,0,'C++,Java,DSA');

-- Placement eligibility logic
SELECT 
name,
cgpa,
backlogs,
CASE
  WHEN cgpa >= 8 AND backlogs = 0 THEN 'Eligible'
  ELSE 'Not Eligible'
END AS Placement_Status
FROM student;

-- Top students for product based companies
SELECT name, cgpa
FROM student
WHERE cgpa >= 8.5;
