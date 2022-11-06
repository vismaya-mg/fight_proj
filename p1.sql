create database car;
use car;
create table cab(id int primary key not null,name varchar(10) not null,no_plate varchar(20) not null,model varchar(20) not null);
use car;
create table  driver(did int primary key not null,d_name varchar(20) not null,address varchar(20) not null,phn varchar(15) not null,email varchar(20) not null,license_no varchar(20) not null,gender varchar(10) not null,passwords varchar(20) not null);
create table  customer(cid int primary key not null,c_name varchar(20) not null,address varchar(20) not null,phn varchar(15) not null,email varchar(20) not null,gender varchar(10) not null,passwords varchar(20) not null);

create table booking(bid int primary key not null,pickup varchar(20) not null,dropoff varchar(20) not null,pickup_time time,
pickup_date date,cid int,constraint cid_booking_to_cid_customer foreign key(cid) references customer(cid),cab_id int not null,constraint cab_id_booking_to_id_cab foreign key(cab_id) references cab(id),
driver_id int not null,constraint driver_id_booking_to_did_customer foreign key(driver_id) references driver(did));
create table assign(aid int primary key not null,driver_id int not null,cab_id int not null,
constraint driver_id_assign_to_did_driver foreign key(driver_id) references driver(did),
constraint cab_id_assign_to_id_cab foreign key(cab_id) references cab(id));