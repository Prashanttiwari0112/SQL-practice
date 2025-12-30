CREATE DATABASE exam_system;
USE exam_system;

CREATE TABLE result (
    student_id INT,
    name VARCHAR(50),
    marks INT
);

INSERT INTO result VALUES
(1,'Raj',78),
(2,'Amit',45),
(3,'Neha',88),
(4,'Pooja',34),
(5,'Karan',91);

-- Grade calculation
SELECT 
name,
marks,
CASE
  WHEN marks >= 85 THEN 'A'
  WHEN marks >= 60 THEN 'B'
  WHEN marks >= 40 THEN 'C'
  ELSE 'Fail'
END AS Grade
FROM result;

-- Toppers
SELECT name, marks
FROM result
WHERE marks = (SELECT MAX(marks) FROM result);
