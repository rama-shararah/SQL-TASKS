CREATE TABLE customers (
id int,
firstName varchar(20),
lastName varchar(20),
phoneNo int,

);

SELECT * FROM customers;

CREATE TABLE orders(

id int,
price float,
total float,
orderdate date
);
SELECT * FROM orders;

CREATE TABLE products(

id int,
price float,
quantity int,
productname varchar(20),

);

SELECT * FROM products;

CREATE TABLE employees(
id int,
employeeName varchar(20),
salary float,
department varchar(25)

);

SELECT * FROM employees;