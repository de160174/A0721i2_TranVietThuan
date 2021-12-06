create database if not exists `student-management`;
use  `student-management`;
create table if not exists student(
id int primary key,
`name` varchar(50),
age int,
country varchar(200)
);
create table if not exists class(
id int primary key,
`name` varchar(50)
);
create table if not exists teacher(
id int primary key,
`name` varchar(50),
age int,
country varchar(200)
);