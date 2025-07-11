Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.42 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

-------------------------------------------------------------
------ Create Database named as "Student management system"
------------------------------------------------------------- 
mysql> create database Student_management_system;
Query OK, 1 row affected (0.11 sec)

-------------------------------------------------------------
------ To Select "Student management system" Database
-------------------------------------------------------------
mysql> use  Student_management_system;
Database changed

-------------------------------------------------------------
------ To create Student Table 
-------------------------------------------------------------
mysql> create table Student(student_id varchar(10) not null primary key,firstName varchar(15) not null,lastName varchar(15) not null,Date_of_birth date);
Query OK, 0 rows affected (0.34 sec)

-------------------------------------------------------------
------ To see description of Student Table
-------------------------------------------------------------
mysql> desc Student;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| student_id    | varchar(10) | NO   | PRI | NULL    |       |
| firstName     | varchar(15) | NO   |     | NULL    |       |
| lastName      | varchar(15) | NO   |     | NULL    |       |
| Date_of_birth | date        | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.07 sec)

-------------------------------------------------------------
------ To insert data into Student Table
-------------------------------------------------------------
mysql> insert into Student values('S1','Vrushabh','Gaikar','2003-4-12'),('S2','Pratham','Hirve','2002-5-30'),('S3','Raj','Patil','2003-6-24'),('S4','Sahil','Patil','2003-12-14'),('S5','Ruchita','Shinde','2003-5-12');
Query OK, 5 rows affected (0.05 sec)
Records: 5  Duplicates: 0  Warnings: 0

-------------------------------------------------------------
------ To See records of Student Table
-------------------------------------------------------------
mysql> select *from Student;
+------------+-----------+----------+---------------+
| student_id | firstName | lastName | Date_of_birth |
+------------+-----------+----------+---------------+
| S1         | Vrushabh  | Gaikar   | 2003-04-12    |
| S2         | Pratham   | Hirve    | 2002-05-30    |
| S3         | Raj       | Patil    | 2003-06-24    |
| S4         | Sahil     | Patil    | 2003-12-14    |
| S5         | Ruchita   | Shinde   | 2003-05-12    |
+------------+-----------+----------+---------------+
5 rows in set (0.00 sec)

-------------------------------------------------------------
----- To Create Enrollment Table
-------------------------------------------------------------
mysql> create table Enrollment(enrollment_id varchar(10) not null primary key,student_id varchar(10) not null,course_id varchar(20) not null,enrollment_date date, foreign key(student_id) references Student(student_id));
Query OK, 0 rows affected (0.37 sec)

-------------------------------------------------------------
----- To See description of Enrollment Table
-------------------------------------------------------------
mysql> desc Enrollment;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| enrollment_id   | varchar(10) | NO   | PRI | NULL    |       |
| student_id      | varchar(10) | NO   | MUL | NULL    |       |
| course_id       | varchar(20) | NO   |     | NULL    |       |
| enrollment_date | date        | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
4 rows in set (0.08 sec)

--------------------------------------------------------------
----- To insert data into Enrollment Table
--------------------------------------------------------------
mysql>  insert into Enrollment values('E1','S4','C100','2025-9-5'),('E2','S5','C200','2023-12-8'),('E3','S1','C300','2015-7-15'),('E4','S3','C400','2020-1-23'),('E5','S2','C500','2012-12-31'),('E6','S1','C600','2015-11-23');
Query OK, 6 rows affected (0.03 sec)
Records: 6  Duplicates: 0  Warnings: 0

--------------------------------------------------------------
----- To See records of Enrollment Table
--------------------------------------------------------------
mysql> select *from Enrollment;
+---------------+------------+-----------+-----------------+
| enrollment_id | student_id | course_id | enrollment_date |
+---------------+------------+-----------+-----------------+
| E1            | S4         | C100      | 2025-09-05      |
| E2            | S5         | C200      | 2023-12-08      |
| E3            | S1         | C300      | 2015-07-15      |
| E4            | S3         | C400      | 2020-01-23      |
| E5            | S2         | C500      | 2012-12-31      |
| E6            | S1         | C600      | 2015-11-23      |
+---------------+------------+-----------+-----------------+
6 rows in set (0.01 sec)

----------------------------------------------------------------------------------------------------------------
----- To retrieve information about each student_id, firstName, lastName and their enrollment details
----------------------------------------------------------------------------------------------------------------
mysql> select Student.student_id,Student.firstName,Student.lastName,Enrollment.enrollment_id,Enrollment.course_id from Student inner join Enrollment on Student.student_id=Enrollment.student_id;
+------------+-----------+----------+---------------+-----------+
| student_id | firstName | lastName | enrollment_id | course_id |
+------------+-----------+----------+---------------+-----------+
| S1         | Vrushabh  | Gaikar   | E3            | C300      |
| S1         | Vrushabh  | Gaikar   | E6            | C600      |
| S2         | Pratham   | Hirve    | E5            | C500      |
| S3         | Raj       | Patil    | E4            | C400      |
| S4         | Sahil     | Patil    | E1            | C100      |
| S5         | Ruchita   | Shinde   | E2            | C200      |
+------------+-----------+----------+---------------+-----------+
6 rows in set (0.01 sec)

   