create database instagram_db;
show databases;
use instagram_db;

create table Users(
user_id int primary key,
username varchar(50) unique,
full_name varchar(50),
email varchar(50),
password varchar(50) not null,
phone_number varchar(15) ,
bio text,
createdat datetime default current_timestamp
);

create table Posts(
post_id int primary key,
user_id int not null,
caption text,
imageurl varchar(255) not null,
likescount int default 0,
createdAT timestamp default current_timestamp,
foreign key (user_id) references users(user_id)
);

create table Comments(
commentid int primary key,
post_id int not null,
user_id int not null,
commenttext varchar(255) not null,
createdAT datetime default current_timestamp,
foreign key (post_id) references posts(post_id),
foreign key (user_id) references users(user_id)
);

create table Likes(
like_id int primary key,
post_id int not null,
user_id int not null,
LikedAT datetime default current_timestamp,
foreign key (post_id) references posts(post_id),
foreign key (user_id) references users(user_id)
);
show tables;

insert into users
value(1,'saaketh12','Saaketh','saaketh@gmail.com','S@123','12345678','','2026-03-17 11:32:54');

insert into users(user_id,username,full_name,email,password)
value(6,'abhi','abhinandhan','abhi@gmail.com','abhi@123');

insert into user_data
value(22,'saaketh123','Saaketh','saaketh@gmail.com','S@123','123456787654321','','2026-03-17 11:32:54',True);


insert into users values
(2,'praveen3','Praveen','Praveen@gmail.com','Pra@123','12345678','coder','2026-03-17 11:32:54'),
(3,'swapnil789','swapnil','swapnil@gmail.com','sapW@123','12345678','','2026-03-17 11:30:54'),
(4,'nikhil11','nikhil','nikhil@gmail.com','nik@123','12345678','','2026-03-17 11:34:54'),
(5,'shanmukh','shanmukh','shanmukh@gmail.com','sha@123','12345678','','2026-03-17 11:53:54');

alter table users
add column isVerified boolean;

alter table users
modify column phone_number varchar(20);

alter table users
drop column verify_status;

alter table users
rename to user_data;


update user_data
set bio = 'reels star'
where user_id = 2;

update user_data
set email='saaketh123@gmail.com'
where user_id=22;

set sql_safe_updates=0;
select @@sql_safe_updates;

update user_data
set password = 'nikhil@987'
where email = 'nikhil@gmail.com';

delete from user_data
where user_id=3;

delete from user_data
where email='nikhil@gmail.com';

delete from user_data
where username = 'abhi';



select * from user_data;

