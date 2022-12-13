CREATE TABLE customer_info (
customerId int IDENTITY (1, 1) primary KEY,
customerName varchar(20),
phoneNo varchar(20) ,
addresss varchar(20)

);

insert into customer_info (customerName,phoneNo,addresss) values ('rama','0776610148','irbid'),('batool','0776610122','irbid');
insert into customer_info (customerName,phoneNo,addresss) values ('haya','0776610555','irbid');
select* from customer_info ;



CREATE TABLE order_info(

orderId int IDENTITY (1, 1) primary key,
total float,
customerId int FOREIGN KEY REFERENCES customer_info(customerId)
);
insert into order_info (total,customerId) values (55,1),(33,2);

select* from order_info ;




CREATE TABLE product_info(

productId int IDENTITY (1, 1)  primary key,
productname varchar(20),
price float,
quantity int,
orderId int FOREIGN KEY REFERENCES order_info(orderId)

);

insert into product_info (productname,price,quantity,orderId) values ('bag',11,5,1),('bag',11,3,2),('bag',11,2,2);


select* from product_info ;

SELECT* 
FROM customer_info
JOIN order_info ON customer_info.customerId=order_info.customerId
JOIN product_info ON order_info.orderId=product_info.orderId;

SELECT* 
FROM customer_info
left JOIN order_info ON customer_info.customerId=order_info.customerId
left JOIN product_info ON order_info.orderId=product_info.orderId;

SELECT* 
FROM customer_info
right JOIN order_info ON customer_info.customerId=order_info.customerId
right JOIN product_info ON order_info.orderId=product_info.orderId;