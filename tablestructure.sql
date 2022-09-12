create database flight;



create table customer (cust_id int primary key,fname varchar(255) not null,lname varchar(255) not null,gender varchar(255) not null,age int not null,contact_add varchar(255),cust_email varchar(255) not null,cust_pass varchar(255) not null);
insert into customer values(001,'swati','sinha','m',22,null,'swati1','1234');
insert into customer values(002,'jebd','fdf','m',20,null,'arfre','1234');
insert into customer values(003,'frdzsf','frvzr','m',22,null,'bjjnj','1234');
insert into customer values(004,'vhnv','bvnvb','f',20,null,'jhjl','1234');



create table admin (admin_id int primary key, fname varchar(255) not null, lname varchar(255) not null, gender varchar(255) not null,age int not null,contact_add varchar(255),admin_email varchar(255) not null,admin_pass varchar(255) not null);
insert into admin values(101,'ghv','hfs','m',23,null,'admin_1','1234');
insert into admin values(102,'jhjk','bn ','m',25,null,'admin_2','4321');



create table ticket (ticket_id int primary key,ticket_num int not null, date_flight date not null,time_depart time not null, time_land time not null, destination varchar(255) not null,departure varchar(255) not null,price int not null);
insert into ticket values (111,12345,'2022-05-05','12:00:00','14:35:00','gkp','blr',3500);
insert into ticket values (112,12345,'2022-05-05','12:00:00','14:35:00','gkp','blr',3500);
insert into ticket values (113,23451,'2022-05-05','12:00:00','14:35:00','gkp','ind',2500);
insert into ticket values (114,23451,'2022-05-05','12:00:00','14:35:00','gkp','ind',2500);



create table reservation(res_id int primary key,admin_id int references admin(admin_id), cust_id int references customer(cust_id),ticket_id int references ticket(ticket_id), date_reserve date not null,date_accom date not null);
insert into reservation values (901,101,1001,1111,'2022-05-01','2022-05-01');
insert into reservation values (902,101,1002,1112,'2022-05-01','2022-05-01');
insert into reservation values (903,102,1003,1113,'2022-05-01','2022-05-01');
insert into reservation values (904,102,1004,1114,'2022-05-01','2022-05-01');



create table transaction(trans_id int primary key,res_id int references reservation(res_id), cust_id int references customer(cust_id),admin_id int references admin(admin_id), trans_date date not null, amount int not null);
insert into transaction values(5001,901,1001,101,'2022-05-01',3500);
insert into transaction values(5002,902,1002,101,'2022-05-01',3500);
insert into transaction values(5003,903,1003,102,'2022-05-01',2500);
insert into transaction values(5004,904,1004,102,'2022-05-01',2500);



create table flight(flight_id int not null,cust_id int,price float,flight_info varchar(20),flight_status varchar(20),FOREIGN KEY (cust_id) REFERENCES customer(cust_id));
insert into flight values (4001,1001,3500,'business','confirmed');
insert into flight values (4001,1002,3500,'business','confirmed');
insert into flight values (4001,1003,2500,'business','confirmed');
insert into flight values (4002,1004,2500,'business','confirmed');