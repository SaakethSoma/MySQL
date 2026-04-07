create database codegnan;
use codegnan;

create table students(
	stud_id int primary key ,
    name varchar(30),
    email varchar(50) unique,
    password varchar(30),
    course varchar(30),
    phoneno varchar(15),
    address varchar(50),
    parent_name varchar(30),
    parent_phno varchar(15),
    attendance decimal(2,2),
    job_applied int,
    exam_reports text
);

alter table students 
modify attendance int;

insert into students values
(1,'saaketh','saaketh@gmail.com','s@123','PFS','9876543210','xxxxx','abc','9876543210',95,3,'good'),
(2,'praveen','praveen@gmail.com','p@1234','JFS','9876583210','xxxxx','abc','9876543210',82,3,'better'),
(3,'krishna','krishna@gmail.com','k@1235','PFS','9876513210','xxxxx','abc','9876543210',52,3,'best'),
(4,'nikhil','nikhil@gmail.com','n@1236','JFS','9876542210','xxxxx','abc','9876543210',92,3,'excellent'),
(5,'shanmukh','shanmukh@gmail.com','sh@123','PFS','9870543210','xxxxx','abc','9876543210',56,3,'needs to improve');

drop table students;
select * from students;

create view trainer_view as
select name,email,course,attendance,exam_reports from students;
select * from trainer_view;


create view program_manager_view as
select name,email,course,phoneno,parent_name,parent_phno,attendance from students;
select * from program_manager_view;

create view placement_view as
select stud_id,name,email,course,attendance,job_applied,exam_reports from students;
select * from placement_view;