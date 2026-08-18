create database ecommerce_project;
use ecommerce_project;
create table categories (
category_id int primary key,
category_name varchar(50)
);

create table customers (
customer_id int primary key,
customer_name varchar(100) not null,
city varchar(50),
state varchar(50),
registration_date date
); 

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category_id INT,
    price DECIMAL(10,2),
    stock INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

create table orders (
order_id int primary key,
customer_id int,
order_date date,
order_status varchar(50),
foreign key (customer_id) references customers (customer_id)
);

create table order_details (
order_detail_id int primary key,
order_id int,
product_id int,
quantity int,
unit_price decimal(10,2),
foreign key (order_id) references orders (order_id),
foreign key (product_id) references products (product_id)
); 

create table payments (
payment_id int primary  key,
order_id int,
payment_date date,
payment_method varchar(30),
payment_status varchar(30),
amount decimal(10,2),
foreign key (order_id) references orders (order_id)
);

show tables;

INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Laptops'),
(3, 'Mobiles'),
(4, 'Accessories'),
(5, 'Home Appliances'),
(6, 'Cameras'),
(7, 'Gaming');
select* from categories;

insert into customers (customer_id,customer_name,city,state,registration_date) values
(101,'amit sharma','pune','maharashtra','2025-01-15'),
(102, 'Sneha Patil', 'Mumbai', 'Maharashtra', '2025-01-20'),
(103, 'Rahul Joshi', 'Pune', 'Maharashtra', '2025-02-10'),
(104, 'Priya Deshmukh', 'Nashik', 'Maharashtra', '2025-02-18'),
(105, 'Akash Pawar', 'Aurangabad', 'Maharashtra', '2025-03-05'),
(106, 'Neha Kulkarni', 'Nagpur', 'Maharashtra', '2025-03-15'),
(107, 'Rohit Jadhav', 'Pune', 'Maharashtra', '2025-04-01'),
(108, 'Pooja Shinde', 'Mumbai', 'Maharashtra', '2025-04-12'),
(109, 'Kunal More', 'Nashik', 'Maharashtra', '2025-05-08'),
(110, 'Sakshi Chavan', 'Pune', 'Maharashtra', '2025-05-20'),
(111, 'Vikas Patil', 'Kolhapur', 'Maharashtra', '2025-06-03'),
(112, 'Riya Pawar', 'Pune', 'Maharashtra', '2025-06-15'),
(113, 'Saurabh Kale', 'Nagpur', 'Maharashtra', '2025-07-01'),
(114, 'Manasi Joshi', 'Mumbai', 'Maharashtra', '2025-07-10'),
(115, 'Nikhil More', 'Pune', 'Maharashtra', '2025-08-05'),
(116, 'Tanvi Patil', 'Nashik', 'Maharashtra', '2025-08-18'),
(117, 'Omkar Shinde', 'Pune', 'Maharashtra', '2025-09-02'),
(118, 'Komal Jadhav', 'Aurangabad', 'Maharashtra', '2025-09-15'),
(119, 'Yash Deshmukh', 'Pune', 'Maharashtra', '2025-10-01'),
(120, 'Isha Kulkarni', 'Mumbai', 'Maharashtra', '2025-10-20');
select * from customers;

insert into products (product_id,product_name,category_id,price,stock) values
(201, 'Dell Inspiron Laptop', 2, 65000.00, 15),
(202, 'HP Pavilion Laptop', 2, 72000.00, 10),
(203, 'Lenovo IdeaPad Laptop', 2, 58000.00, 20),
(204, 'iPhone 15', 3, 70000.00, 12),
(205, 'Samsung Galaxy S24', 3, 65000.00, 18),
(206, 'OnePlus 12', 3, 55000.00, 25),
(207, 'Sony Headphones', 4, 8000.00, 30),
(208, 'Boat Earbuds', 4, 2500.00, 50),
(209, 'Logitech Mouse', 4, 1500.00, 0),
(210, 'Mechanical Keyboard', 4, 4500.00, 22),
(211, 'LG Smart TV', 5, 55000.00, 8),
(212, 'Samsung Washing Machine', 5, 48000.00, 6),
(213, 'Philips Air Fryer', 5, 9000.00, 14),
(214, 'Canon EOS Camera', 6, 85000.00, 5),
(215, 'Nikon DSLR Camera', 6, 95000.00, 4),
(216, 'Sony Alpha Camera', 6, 120000.00, 0),
(217, 'PlayStation 5', 7, 55000.00, 9),
(218, 'Xbox Series X', 7, 52000.00, 7),
(219, 'Gaming Monitor', 7, 30000.00, 11),
(220, 'Gaming Mouse', 7, 3500.00, 0);
select * from products;

insert into orders (order_id,customer_id,order_date,order_status) values
(5001, 101, '2025-01-25', 'Delivered'),
(5002, 102, '2025-02-05', 'Delivered'),
(5003, 103, '2025-02-15', 'Delivered'),
(5004, 101, '2025-02-28', 'Delivered'),
(5005, 104, '2025-03-10', 'Delivered'),
(5006, 105, '2025-03-20', 'Delivered'),
(5007, 101, '2025-04-05', 'Delivered'),
(5008, 106, '2025-04-18', 'Delivered'),
(5009, 107, '2025-05-02', 'Delivered'),
(5010, 102, '2025-05-15', 'Delivered'),
(5011, 108, '2025-06-01', 'Delivered'),
(5012, 109, '2025-06-12', 'Delivered'),
(5013, 101, '2025-07-03', 'Delivered'),
(5014, 110, '2025-07-15', 'Delivered'),
(5015, 111, '2025-08-01', 'Delivered'),
(5016, 112, '2025-08-12', 'Delivered'),
(5017, 101, '2025-09-05', 'Delivered'),
(5018, 113, '2025-09-18', 'Delivered'),
(5019, 114, '2025-10-02', 'Delivered'),
(5020, 115, '2025-10-15', 'Delivered'),
(5021, 102, '2025-11-01', 'Delivered'),
(5022, 103, '2025-11-12', 'Delivered'),
(5023, 116, '2025-11-20', 'Delivered'),
(5024, 117, '2025-12-01', 'Delivered'),
(5025, 118, '2025-12-10', 'Pending'),
(5026, 119, '2025-12-15', 'Delivered'),
(5027, 120, '2025-12-20', 'Pending'),
(5028, 101, '2025-12-22', 'Delivered'),
(5029, 105, '2025-12-25', 'Delivered'),
(5030, 110, '2025-12-28', 'Pending');
select * from orders;

insert into order_details (order_detail_id,order_id,product_id,quantity,unit_price) values
(1, 5001, 201, 2, 65000.00),
(2, 5001, 207, 1, 8000.00),

(3, 5002, 204, 1, 70000.00),
(4, 5002, 208, 2, 2500.00),

(5, 5003, 202, 1, 72000.00),
(6, 5003, 210, 2, 4500.00),

(7, 5004, 201, 1, 65000.00),
(8, 5004, 209, 3, 1500.00),

(9, 5005, 205, 2, 65000.00),
(10, 5005, 208, 3, 2500.00),

(11, 5006, 203, 2, 58000.00),
(12, 5006, 213, 1, 9000.00),

(13, 5007, 202, 2, 72000.00),
(14, 5007, 207, 2, 8000.00),

(15, 5008, 211, 1, 55000.00),
(16, 5008, 210, 1, 4500.00),

(17, 5009, 204, 1, 70000.00),
(18, 5009, 208, 2, 2500.00),

(19, 5010, 205, 1, 65000.00),
(20, 5010, 209, 2, 1500.00),

(21, 5011, 214, 1, 85000.00),
(22, 5011, 207, 1, 8000.00),

(23, 5012, 206, 2, 55000.00),
(24, 5012, 208, 4, 2500.00),

(25, 5013, 201, 2, 65000.00),
(26, 5013, 210, 1, 4500.00),

(27, 5014, 212, 1, 48000.00),
(28, 5014, 213, 2, 9000.00),

(29, 5015, 215, 1, 95000.00),
(30, 5015, 207, 2, 8000.00),

(31, 5016, 217, 1, 55000.00),
(32, 5016, 220, 2, 3500.00),

(33, 5017, 202, 1, 72000.00),
(34, 5017, 208, 5, 2500.00),

(35, 5018, 219, 2, 30000.00),
(36, 5018, 210, 1, 4500.00),

(37, 5019, 216, 1, 120000.00),
(38, 5019, 207, 1, 8000.00),

(39, 5020, 203, 1, 58000.00),
(40, 5020, 209, 2, 1500.00),

(41, 5021, 204, 2, 70000.00),
(42, 5021, 208, 2, 2500.00),

(43, 5022, 201, 1, 65000.00),
(44, 5022, 207, 1, 8000.00),

(45, 5023, 218, 1, 52000.00),
(46, 5023, 220, 1, 3500.00),

(47, 5024, 213, 3, 9000.00),
(48, 5024, 208, 2, 2500.00),

(49, 5025, 217, 1, 55000.00),
(50, 5025, 220, 1, 3500.00),

(51, 5026, 214, 1, 85000.00),
(52, 5026, 210, 1, 4500.00),

(53, 5027, 211, 1, 55000.00),
(54, 5027, 207, 1, 8000.00),

(55, 5028, 205, 2, 65000.00),
(56, 5028, 208, 3, 2500.00),

(57, 5029, 206, 1, 55000.00),
(58, 5029, 210, 2, 4500.00),

(59, 5030, 219, 1, 30000.00),
(60, 5030, 220, 2, 3500.00);
select * from order_details;

insert into payments (payment_id,order_id,payment_date,payment_method,payment_status,amount) values
 (9001, 5001, '2025-01-25', 'UPI', 'Paid', 138000.00),
(9002, 5002, '2025-02-05', 'Card', 'Paid', 75000.00),
(9003, 5003, '2025-02-15', 'UPI', 'Paid', 81000.00),
(9004, 5004, '2025-02-28', 'Card', 'Paid', 69500.00),
(9005, 5005, '2025-03-10', 'UPI', 'Paid', 137500.00),
(9006, 5006, '2025-03-20', 'Net Banking', 'Paid', 125000.00),
(9007, 5007, '2025-04-05', 'Card', 'Paid', 160000.00),
(9008, 5008, '2025-04-18', 'UPI', 'Paid', 59500.00),
(9009, 5009, '2025-05-02', 'Cash', 'Paid', 75000.00),
(9010, 5010, '2025-05-15', 'UPI', 'Paid', 68000.00),
(9011, 5011, '2025-06-01', 'Card', 'Paid', 93000.00),
(9012, 5012, '2025-06-12', 'UPI', 'Paid', 120000.00),
(9013, 5013, '2025-07-03', 'Card', 'Paid', 134500.00),
(9014, 5014, '2025-07-15', 'UPI', 'Paid', 66000.00),
(9015, 5015, '2025-08-01', 'Card', 'Paid', 111000.00),
(9016, 5016, '2025-08-12', 'UPI', 'Paid', 62000.00),
(9017, 5017, '2025-09-05', 'Net Banking', 'Paid', 84500.00),
(9018, 5018, '2025-09-18', 'Card', 'Paid', 64500.00),
(9019, 5019, '2025-10-02', 'UPI', 'Paid', 128000.00),
(9020, 5020, '2025-10-15', 'UPI', 'Paid', 61000.00),
(9021, 5021, '2025-11-01', 'Card', 'Paid', 145000.00),
(9022, 5022, '2025-11-12', 'UPI', 'Paid', 73000.00),
(9023, 5023, '2025-11-20', 'Cash', 'Paid', 55500.00),
(9024, 5024, '2025-12-01', 'UPI', 'Paid', 32000.00),
(9025, 5025, '2025-12-10', 'Card', 'Pending', 58500.00),
(9026, 5026, '2025-12-15', 'UPI', 'Paid', 89500.00),
(9027, 5027, '2025-12-20', 'Card', 'Pending', 63000.00),
(9028, 5028, '2025-12-22', 'UPI', 'Paid', 137500.00),
(9029, 5029, '2025-12-25', 'Card', 'Paid', 64000.00),
(9030, 5030, '2025-12-28', 'UPI', 'Pending', 37000.00);
select * from payments;

select * from customers;

select * from customers where city='pune';

# Q.1 :-
select customer_id, customer_name, city from customers where city='pune';

# Q.2 :-
select count(*) from customers;

# Q.3 :-
select count(*)as total_orders from orders;

# Q.4 :-
select sum(quantity*unit_price) from order_details;

# Q.5 :-
select p.product_id, p.product_name, sum(od.quantity*od.unit_price) as total_sales
from products p
join order_details od  on  p.product_id = od.product_id
group by p.product_id, p.product_name
order by total_sales desc  limit 5;


alter table order_details
add column sale decimal(12,2);

select * from order_details;
UPDATE order_details
SET sale = quantity * unit_price
WHERE order_detail_id > 0; 

select * from order_details; 
select sum(sale) from order_details;


# Q.6 :-
select c.category_name, sum(od.quantity * od.unit_price) as category_sales
from categories c
join products p  on  c.category_id = p.category_id
join order_details od  on  p.product_id = od.product_id
group by c.category_id, c.category_name
order by category_sales desc;


select c.customer_id, c.customer_name, COUNT(o.order_id) AS total_orders
from customers c
left join orders o  on  c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
order by c.customer_id;
INSERT INTO customers
(customer_id, customer_name, city, state, registration_date)
VALUES
(122, 'Aditya More', 'Pune', 'Maharashtra', '2025-11-10'),
(123, 'Kavya Shinde', 'Mumbai', 'Maharashtra', '2025-11-15'),
(124, 'Rohan Kale', 'Nashik', 'Maharashtra', '2025-11-20');

# Q.7:-
select c.customer_id, c.customer_name
from customers c
left join orders o  on  c.customer_id = o.customer_id
where o.order_id is null;

# Q.8 :-
select c.customer_id, c.customer_name, sum(p.amount) as pending_amount
from customers c
join orders o  on  c.customer_id = o.customer_id
join payments p  on  o.order_id = p.order_id
where p.payment_status = "pending"
group by c.customer_id, c.customer_name
order by pending_amount desc  limit 1;

 
# Q.9 :-
select year(o.order_date) as year, month(o.order_date) as month, sum(od.quantity*od.unit_price) as monthly_sales
from orders o
join order_details od  on  o.order_id = od.order_id
group by year(o.order_date), month(o.order_date)
order by year, month;

# Q.10 :-
select product_id,product_name,price from products order by price desc limit 1;

# Q.11 :-
select product_id,product_name,stock from products where stock = 0;

# Q.12 :- 
select c.customer_id, c.customer_name, count(o.order_id) as total_orders
from customers c
join orders o  on  c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
having count(o.order_id) > 3;

# Q.13 :-
select p.product_id, p.product_name, sum(sale) as revenue
from products p
join order_details od  on  p.product_id = od.product_id
group by p.product_id, p.product_name
order by revenue desc limit 1 offset 1;

# Q.14 :-
select year(o.order_date) as year, month(o.order_date) as month, sum(sale) as monthly_sales
from orders o
join order_details od  on  o.order_id = od.order_id
group by year(o.order_date), month(o.order_date)
order by monthly_sales desc limit 1;

# Q.15 :-
select c.customer_id, c.customer_name, count(o.order_id) as total_orders
from customers c
join orders o  on  c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
having count(o.order_id) > 1
order by total_orders desc;

# Q.16 :-
select p.product_id, p.product_name, sum(sale) as total_sales,
rank() over( 
      order by sum(sale) desc ) as sales_rank
from products p
join order_details od  on  p.product_id = od.product_id
group by p.product_id, p.product_name;


 