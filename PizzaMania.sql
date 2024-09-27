create database pizzamania;
use pizzamania;
select * from pizzas;
create table orders(
order_id int not null,
order_date datetime not null,
order_time time not null,
primary key(order_id)
);
SHOW VARIABLES LIKE 'secure_file_priv';
LOAD DATA infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders.csv' into table orders
fields terminated by ','
IGNORE 1 Lines;

create table order_details(
order_details_id int not null,
order_id int not null,
pizza_id text not null,
quantity int not null,
primary key(order_details_id)
);
SHOW VARIABLES LIKE 'secure_file_priv';
LOAD DATA infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/order_details.csv' into table order_details
fields terminated by ','
IGNORE 1 Lines;


