create database projecthotel3;
use projecthotel3;
create table guests(guestid int primary key,guestname varchar(40),email varchar(50),phonenumber bigint);
insert into guests values
(1,'name1','name1@gmail.com',9949032773),
(2,'name2','name2@gmail.com',9786665532),
(3,'name3','name3@gmail.com',9876555554),
(4,'name4','name4@gmail.com',7853444333),
(5,'name5','name5@gamil.com',9865334555);
select*from guests;
create table rooms(roomid int primary key,roomnumber int,roomtype varchar(30),pricepernight int);
insert into rooms values(1,101,'AC',1000),
(2,102,'non _AC',1500),
(3,103,'AC',1200),
(4,104,'AC',1400),
(5,105,'non_AC',1000),
 (6,106,'AC',900),
(7,107,'non_AC',950);
select*from rooms;
create table bookings(bookingid int primary key,guestid int,roomid int,checkindate date,checkoutdate date,totalamount int,foreign key(guestid)references guests(guestid),foreign key(roomid)references rooms(roomid),check(checkoutdate>checkindate));
insert into bookings values(1,1,1,'2024-02-20','2024-02-22',4000),
(2,2,2,'2023-03-19','2023-03-25',5000),
(3,3,3,'2022-04-04','2022-04-07',6000),
(4,4,4,'2021-05-02','2021-05-09', 8000),
(5,5,5,'2022-09-07','2022-09-12',5000);
select*from bookings;
select roomid from rooms where roomid not in(select roomid from bookings);
select sum(totalamount)  from bookings;
select bookings.bookingid,guests.guestname,rooms.roomtype,rooms.pricepernight,
bookings.checkindate,bookings.checkoutdate,bookings.totalamount 
from bookings join guests on bookings.guestid=guests.guestid join rooms on bookings.roomid=rooms.roomid;
select name from employees where dept_id in (select dep_id  from departement  where depname like '%s');
select max(salary),name from employees where dep_id in(select dep_id from depatment where depname='account');
create table employee(empno int primary key,ename varchar(30),job varchar(60),
 mgr int,hiredate date,salary int);
 insert into employee values(1,'smith','clerk',11,'17-12-2002','');

