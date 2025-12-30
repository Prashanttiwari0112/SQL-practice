CREATE DATABASE it_support;
USE it_support;

CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    issue VARCHAR(50),
    severity INT,
    status VARCHAR(20)
);

INSERT INTO tickets VALUES
(1,'Server Down',5,'Open'),
(2,'Login Issue',2,'Open'),
(3,'Payment Failure',4,'In Progress'),
(4,'UI Bug',1,'Open');

-- Ticket priority logic
SELECT 
ticket_id,
issue,
severity,
CASE
  WHEN severity >= 4 THEN 'Critical'
  WHEN severity = 3 THEN 'High'
  ELSE 'Normal'
END AS Priority
FROM tickets;
