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
