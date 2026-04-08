create database normalization_demo;
use normalization_demo;

create table student_data_unnormalized(
	StudentID int,
    StudentName varchar(50),
    Course1 varchar(30),
    Course2 varchar(30),
    course3 varchar(30),
    Department varchar(20),
    Advisor varchar(30)
);

insert into student_data_unnormalized values
(101,'Saaketh','DBMS','OS','JAVA','CSE','Dr.Meena'),
(102,'Krishna Vardhan','DBMS',NULL,NULL,'CSE','Dr.Meena'),
(103,'Shanmukh','OS','JAVA','PYTHON','IT','Dr.Raj'),
(104,'Satya','DBMS','JAVA',NULL,'CSE','Dr.Meena'),
(105,'Praveen','Python',NULL,NULL,'IT','Dr.Raj');

-- view Unnormalized Data
select * from student_data_unnormalized;

-- convert to 1NF (split multi-valued columns into separate rows)

create table student_data_1NF (
	StudentID int,
    StudentName varchar(50),
    Course varchar(30),
    Department varchar(20),
    Advisor varchar(30)
);

insert into student_data_1NF(StudentID, StudentName,Course, Department,Advisor) values
(101,'Saaketh','DBMS','CSE','Dr.Meena'),
(101,'Saaketh','OS','CSE','Dr.Meena'),
(101,'Saaketh','Java','CSE','Dr.Meena'),
(102,'Krishna Vardhan','DBMS','CSE','Dr.Meena'),
(103,'Shanmukh','OS','IT','Dr.Raj');
select * from student_data_1NF;

------------------------------------
-- Convert to 2NF (Remove partial dependency)
-- split into STUDENT table and ENROLLMENT table
------------------------------------

create table student_data_2NF_students(
	StudentID int primary key,
    StudentName varchar(50),
    Department varchar(20),
    Advisor varchar(30)
); 

insert into student_data_2NF_students 
select distinct StudentID, StudentName , Department , Advisor
from student_data_1NF;

create table student_data_2NF_enrollment(
	StudentID int,
    Course varchar(30),
    foreign key (StudentID) references student_data_2NF_students(StudentID)
);

insert into  student_data_2NF_enrollment(StudentID,Course)
select StudentID,Course from student_data_1NF;

-- view Both Tables
select * from student_data_2NF_students;
select * from student_data_2NF_enrollment;

-----------------------------------------------
-- convert to 3NF (Remove transitive dependency)
-- Department and Advisor relationship stored seperately
-----------------------------------------------
 create table department_3NF(
	Department varchar(20) primary key,
	Advisor varchar(30)
 );
 
 insert into department_3NF values
 ('CSE','Dr.Meena'),
 ('IT','Dr.Raj');
 
 create table students_3NF(
	StudentID int primary key,
    StudentName varchar(50),
    Department varchar(20),
    foreign key (Department) references department_3NF(Department)
);

insert into students_3NF
select distinct StudentID , StudentName , Department from student_data_2NF_students;

create table enrollment_3NF (
	StudentID int,
    Course varchar(30),
    foreign key (StudentID) references students_3NF(StudentID)    
    );
    
insert into enrollment_3NF
select * from student_data_2NF_enrollment;

-- view al the 3NF Tables
select * from department_3NF;
select * from students_3NF;
select * from enrollment_3NF;