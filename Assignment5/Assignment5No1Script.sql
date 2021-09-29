-- *************************************************************
-- This script to create a database with normalized tables and adding user inputs
-- for IT2351 - Enterprise Database Systems, Fall 2021 by Jeyanthi Meenakshisundaram
-- *************************************************************

-- create the database
DROP DATABASE IF EXISTS Jeyanthi_student_db;
CREATE DATABASE Jeyanthi_student_db;

-- select the database
USE Jeyanthi_student_db;

-- create the tables
CREATE TABLE student
(
student_ID    varchar(50)     NOT NULL ,
student_name   varchar(50)   NOT NULL  ,
address     varchar(50),
email    varchar(50)   unique,
constraint student_pk
 primary key (student_ID, student_name)
);

create table major
(
stud_ID   varchar(50)  primary key not null,
major     varchar(50)  not null,
constraint major_fk_student
  foreign key (stud_ID)
  references student (student_ID)
);

create table class
(
class_id    int   primary key  not null,
studen_ID    varchar(50),
class      varchar(50)   not null,
constraint class_fk_student
  foreign key (studen_ID)
  references student (student_ID)
);

insert into student
values('S1', 'Joe Smith','124 Main St.','Joe@school.edu'),
('S2', 'Sue Brown','345 Second St.', 'Sue@school.edu'),
('S3','Nick Green','45 York Road','Nick@school.edu'),
('S4','Andy Ansrews','600 5th Ave.','Andy@school.edu'),
('S5','Judas Thomas','4567 Mayfield Rd','Judas@school.edu'),
('S6','Black Widow','6589 Maplewood','Black@school.edu'),
('S7','Sophie Turner','3225 south Euclid','Sophie@school.edu');

insert into major values
('S1','Programming'),
('S2','Programming'),
('S3','Networking'),
('S4','Networking'),
('S5','Data Science'),
('S6', 'Web development'),
('S7', 'Cyber Security');

insert into class values
('1','S1','IT1025'),
('2','S1','MATH1200'),
('3','S1', 'IT1050'),
('4','S2','IT1025'),
('5','S2','IT1050'),
('6','S2','IT2351'),
('7','S3','1025'),
('8','S4','1025'),
('9','S4','1050'),
('10','S5','DT1100'),
('11','S5','DT1050'),
('12','S5','DT1231'),
('13','S6','IT1200'),
('14','S6','IT2351'),
('15','S7','QA1234'),
('16','S7','QT3241');

select distinct * from student, class, major;