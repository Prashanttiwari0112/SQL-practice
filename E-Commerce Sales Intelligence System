CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer VARCHAR(50),
    amount INT,
    order_date DATE
);

INSERT INTO orders VALUES
(101,'Raj',5000,'2024-01-10'),
(102,'Raj',3000,'2024-01-12'),
(103,'Neha',9000,'2024-02-01'),
(104,'Amit',2000,'2024-02-05'),
(105,'Neha',12000,'2024-02-10');

-- Top customers by revenue
SELECT 
customer,
SUM(amount) AS Total_Spent
FROM orders
GROUP BY customer
HAVING SUM(amount) > 8000;

-- Monthly revenue
SELECT 
MONTH(order_date) AS Month,
SUM(amount) AS Revenue
FROM orders
GROUP BY MONTH(order_date);
