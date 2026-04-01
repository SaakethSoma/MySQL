CREATE DATABASE company_practice;
USE company_practice;

SELECT DATABASE();-----------

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO customers (customer_name, city) VALUES
('Amit Sharma', 'Hyderabad'),
('Priya Reddy', 'Bangalore'),
('Rahul Verma', 'Chennai'),
('Sneha Iyer', 'Mumbai'),
('Karthik Rao', 'Hyderabad'),
('Divya Nair', 'Pune');

INSERT INTO suppliers (supplier_name, city) VALUES
('Tech Distributors', 'Hyderabad'),
('Global Supplies', 'Delhi'),
('South Traders', 'Chennai'),
('Metro Wholesale', 'Kolkata'),
('Prime Traders', 'Mumbai'),
('Elite Vendors', 'Bangalore');

SELECT city FROM customers
UNION
SELECT city FROM suppliers;

SELECT city FROM customers
UNION ALL
SELECT city FROM suppliers;

SELECT distinct city 
FROM customers
WHERE city IN (SELECT city FROM suppliers);

SELECT city
FROM customers
WHERE city NOT IN (SELECT city FROM suppliers);