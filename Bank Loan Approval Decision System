CREATE DATABASE bank_system;
USE bank_system;

CREATE TABLE loan_applicant (
    applicant_id INT PRIMARY KEY,
    name VARCHAR(50),
    income INT,
    credit_score INT
);

INSERT INTO loan_applicant VALUES
(1,'Raj',30000,720),
(2,'Amit',18000,650),
(3,'Neha',60000,810),
(4,'Karan',25000,580);

-- Loan decision logic
SELECT 
name,
income,
credit_score,
CASE
  WHEN credit_score >= 750 AND income >= 40000 THEN 'Approved'
  WHEN credit_score >= 650 THEN 'Review'
  ELSE 'Rejected'
END AS Loan_Status
FROM loan_applicant;
