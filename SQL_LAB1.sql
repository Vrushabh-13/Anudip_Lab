Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.42 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| practice           |
| sakila             |
| sys                |
| vrushabh           |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> create database company;
Query OK, 1 row affected (0.04 sec)

mysql> use company;
Database changed
mysql> create table customer(customer_id varchar(10) not null primary key, name varchar(15) not null, email varchar(20) not null, address varchar(15) not null, city varchar(20) not null, phone_no int not null, pin_code varchar(10) not null);
Query OK, 0 rows affected (0.10 sec)

mysql> desc customer ;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| email       | varchar(20) | NO   |     | NULL    |       |
| address     | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(20) | NO   |     | NULL    |       |
| phone_no    | int         | NO   |     | NULL    |       |
| pin_code    | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> insert into customer values('c1','raj','raj@gmail.com','ghatkopar','mumbai',7275788990,'421223');
ERROR 1264 (22003): Out of range value for column 'phone_no' at row 1
mysql> insert into customer values('c1','raj','raj@gmail.com','ghatkopar','mumbai',727578899,'421223');
Query OK, 1 row affected (0.01 sec)

mysql> show *from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*from customer' at line 1
mysql> show *from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*from customer' at line 1
mysql> show *from customer ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*from customer' at line 1
mysql> select *from customer;
+-------------+------+---------------+-----------+--------+-----------+----------+
| customer_id | name | email         | address   | city   | phone_no  | pin_code |
+-------------+------+---------------+-----------+--------+-----------+----------+
| c1          | raj  | raj@gmail.com | ghatkopar | mumbai | 727578899 | 421223   |
+-------------+------+---------------+-----------+--------+-----------+----------+
1 row in set (0.00 sec)

mysql> insert into customer values('c2','pushpraj','praj@gmail.com','dahanu','palghar',727579899,'421213');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer values('c3','swaraj','swaraj@gmail.com','mira road','mumbai',927579899,'421113'),('c4','shiva','shiv@gmail.com','kalyan','mumbai',768965246,'435623');
Query OK, 2 rows affected (0.04 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into customer values('c2','miraj','miraj@gmail.com','chichwad','pune',707579899,'906745');
ERROR 1062 (23000): Duplicate entry 'c2' for key 'customer.PRIMARY'
mysql> insert into customer values('c5','miraj','miraj@gmail.com','chichawad','pune',707579899,'906745');
Query OK, 1 row affected (0.01 sec)

mysql> select *from customer;
+-------------+----------+------------------+-----------+---------+-----------+----------+
| customer_id | name     | email            | address   | city    | phone_no  | pin_code |
+-------------+----------+------------------+-----------+---------+-----------+----------+
| c1          | raj      | raj@gmail.com    | ghatkopar | mumbai  | 727578899 | 421223   |
| c2          | pushpraj | praj@gmail.com   | dahanu    | palghar | 727579899 | 421213   |
| c3          | swaraj   | swaraj@gmail.com | mira road | mumbai  | 927579899 | 421113   |
| c4          | shiva    | shiv@gmail.com   | kalyan    | mumbai  | 768965246 | 435623   |
| c5          | miraj    | miraj@gmail.com  | chichawad | pune    | 707579899 | 906745   |
+-------------+----------+------------------+-----------+---------+-----------+----------+
5 rows in set (0.00 sec)

mysql> create table product(product_id varchar(10) not null primary key, product_name varchar(20) not null, category varchar(20) not null, sub_category varchar(20) not null, original_price varchar(20) not null, selling_price varchar(20) not null, stock int not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(20) | NO   |     | NULL    |       |
| category       | varchar(20) | NO   |     | NULL    |       |
| sub_category   | varchar(20) | NO   |     | NULL    |       |
| original_price | varchar(20) | NO   |     | NULL    |       |
| selling_price  | varchar(20) | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql>
mysql> insert into product values('p1','watch','electrical','handset','2000','1800',6);
Query OK, 1 row affected (0.04 sec)

mysql> insert into product values('p2','tv','electrical','attchted','20000','17000',20);
Query OK, 1 row affected (0.03 sec)

mysql> insert into product values('p3','laptop','electrical','remote','40000','37000',11);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values('p4','dining table','furniture','attchted','25000','22000',9);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values('p5','buld','electrical','lighting','200','180',110);
Query OK, 1 row affected (0.03 sec)

mysql> select *from product;
+------------+--------------+------------+--------------+----------------+---------------+-------+
| product_id | product_name | category   | sub_category | original_price | selling_price | stock |
+------------+--------------+------------+--------------+----------------+---------------+-------+
| p1         | watch        | electrical | handset      | 2000           | 1800          |     6 |
| p2         | tv           | electrical | attchted     | 20000          | 17000         |    20 |
| p3         | laptop       | electrical | remote       | 40000          | 37000         |    11 |
| p4         | dining table | furniture  | attchted     | 25000          | 22000         |     9 |
| p5         | buld         | electrical | lighting     | 200            | 180           |   110 |
+------------+--------------+------------+--------------+----------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> create table order(order_id varchar(10) not null primary key, customer_id varchar(10) not null, product_id varchar(10) not null, quantity int not null, total_price varchar(15) not null, payment_mode varchar(15) not null, order_date varchar(20) not null, order_status varchar(15) not null, foreign key(customer_id) REFERENCES customer(customer_id), foreign key(product_id) REFERENCES product(product_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order(order_id varchar(10) not null primary key, customer_id varchar(10) not nul' at line 1
mysql> create table orders(order_id varchar(10) not null primary key, customer_id varchar(10) not null, product_id varchar(10) not null, quantity int not null, total_price varchar(15) not null, payment_mode varchar(15) not null, order_date varchar(20) not null, order_status varchar(15) not null, foreign key(customer_id) REFERENCES customer(customer_id), foreign key(product_id) REFERENCES product(product_id));
Query OK, 0 rows affected (0.42 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| order_id     | varchar(10) | NO   | PRI | NULL    |       |
| customer_id  | varchar(10) | NO   | MUL | NULL    |       |
| product_id   | varchar(10) | NO   | MUL | NULL    |       |
| quantity     | int         | NO   |     | NULL    |       |
| total_price  | varchar(15) | NO   |     | NULL    |       |
| payment_mode | varchar(15) | NO   |     | NULL    |       |
| order_date   | varchar(20) | NO   |     | NULL    |       |
| order_status | varchar(15) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
8 rows in set (0.06 sec)

mysql> insert into orders values('o1','c1','p1',20,'2500','upi','20 july','pending');
Query OK, 1 row affected (0.04 sec)

mysql> select *from orders;
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date | order_status |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| o1       | c1          | p1         |       20 | 2500        | upi          | 20 july    | pending      |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
1 row in set (0.01 sec)

mysql> insert into orders values('o2','c2','p2',40,'7500','check','10 july','done');
Query OK, 1 row affected (0.01 sec)

mysql> insert into orders values('o3','c3','p3',10,'68500','cash','9 july','done');
Query OK, 1 row affected (0.01 sec)

mysql> insert into orders values('o4','c4','p4',90,'13500','upi','15 july','pending');
Query OK, 1 row affected (0.01 sec)

mysql> insert into orders values('o5','c5','p5',35,'74890','check','3 july','done');
Query OK, 1 row affected (0.01 sec)

mysql> select *from orders;
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date | order_status |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| o1       | c1          | p1         |       20 | 2500        | upi          | 20 july    | pending      |
| o2       | c2          | p2         |       40 | 7500        | check        | 10 july    | done         |
| o3       | c3          | p3         |       10 | 68500       | cash         | 9 july     | done         |
| o4       | c4          | p4         |       90 | 13500       | upi          | 15 july    | pending      |
| o5       | c5          | p5         |       35 | 74890       | check        | 3 july     | done         |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
5 rows in set (0.01 sec)