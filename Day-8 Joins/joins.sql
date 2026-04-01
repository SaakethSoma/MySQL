CREATE DATABASE swiggy;
USE swiggy;


-- Users (Customers)
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

-- Restaurants
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(50),
    city VARCHAR(50)
);

-- Orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    restaurant_id INT,
    amount INT
);
-- Ratings
CREATE TABLE ratings (
    rating_id INT PRIMARY KEY,
    min_amount INT,
    max_amount INT,
    category VARCHAR(20)
);

-- ==============================
-- INSERT DATA
-- ==============================

INSERT INTO users VALUES
(1, 'Ravi', 'Hyderabad'),
(2, 'Sita', 'Vijayawada'),
(3, 'Arjun', 'Hyderabad'),
(4, 'Meena', 'Chennai');

INSERT INTO restaurants VALUES
(101, 'Biryani House', 'Hyderabad'),
(102, 'Pizza Hub', 'Vijayawada'),
(103, 'Food Corner', 'Delhi');

INSERT INTO orders VALUES
(1001, 1, 101, 250),
(1002, 2, 102, 500),
(1003, 1, 102, 300),
(1004, 3, 105, 200);  

INSERT INTO ratings VALUES
(1, 0, 300, 'Low'),
(2, 301, 600, 'Medium'),
(3, 601, 1000, 'High');

-- 1. INNER JOIN 
--  SYNTAX : SELECT t1.col,t2.col.....tn.col 
-- from table1 t1
-- inner join 
-- table2 t2
 -- on t1.col = t2.col
 -- inner join 
 -- table3 t3
 -- on t1.col = t3.col 
 
 select u.name , r.restaurant_name , o.amount
 from users u
 inner join orders o on u.user_id = o.user_id
 inner join restaurants r on o.restaurant_id = r.restaurant_id;
 
 -- 2. LEFT JOIN
 select u.name, o.order_id
 from users u
 left join orders o on u.user_id = o.user_id;
 
 select * from users;
 select * from orders;
 
 -- 3. RIGHT JOIN
  select u.name, o.order_id
 from users u
 right join orders o on u.user_id = o.user_id;
 
 select * from users;
 select * from orders;
 
 -- 4. FULL JOIN
 select u.name, o.order_id
 from users u
 left join orders o on u.user_id = o.user_id
 
 union 
 
 select u.name, o.order_id
 from users u
 right join orders o on u.user_id = o.user_id;
 
 -- 5.EQUI JOIN 
 select u.name,o.order_id
 from users u , orders o
 where u.user_id = o.user_id;
 
 -- 6. NON EQUI JOIN 
 select u.name,o.order_id
 from users u , orders o
 where u.user_id <> o.user_id;
 
 -- 7. NATURAL JOIN 
 select * from users 
 natural join orders;
 
 select * from restaurants
 natural join orders;
 
 -- 8. SELF JOIN
 select u1.name as customer1, u2.name as customer2, u1.city
 from users u1
 join users u2
 on u1.city = u2.city AND u1.user_id <> u2.user_id;
 
 -- 9. CROSS JOIN
 select u.name, r.restaurant_name
 from users u 
 cross join restaurants r;