CREATE DATABASE ecommerce_system;
USE ecommerce_system;

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT,
    stock INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO product VALUES
(1,'Laptop',50000,10),
(2,'Mobile',20000,25),
(3,'Headphones',2000,5);

INSERT INTO orders VALUES
(101,1,2),
(102,2,3),
(103,3,2);

-- Order revenue report
SELECT 
p.product_name,
o.quantity,
(p.price * o.quantity) AS Total_Amount
FROM product p
JOIN orders o ON p.product_id = o.product_id;

-- Low stock alert system
SELECT 
product_name,
stock
FROM product
WHERE stock < 10;
