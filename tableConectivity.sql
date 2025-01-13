create database walmart;

use walmart;

create table user(
user_id varchar(20) primary key,
user_name varchar(20) not null,
user_email varchar(20) not null,
user_contact bigint not null,
user_address varchar(20) not null
);

desc user;

insert into user values("user123","john","john@gmail.com",1234567890,"johnsburg");
insert into user values("user234","Mike","mike@gmail.com",2345678910,"gerogetown");
insert into user values("user345","Paxton","paxton@gmail.com",345678901,"california");
insert into user values("user456","Bunny","bunny@gmail.com",4567890123,"norway");
insert into user values("user567","George","geogre@gmail.com",5678901234,"Munich");
insert into user values("user678","Baston","boston@gmail.com",6789012345,"amsterdam");
insert into user values("user789","Rocky","rocky@gmail.com",7890123456,"berlin");
insert into user values("user890","Tony","tony@gmail.com",8901234567,"almighty");
insert into user values("user901","Nancy","nancy@gmail.com",90123465789,"tokyo");
insert into user values("user012","Nastya","nastya@gmail.com",0147852369,"boston");


create table admin(
admin_id varchar(20) primary key,
admin_email varchar(20) not null,
admin_contact varchar(20) not null,
admin_name varchar(20) not null
);
insert into admin values("admin@123","admin@gmail.com",9874563210,"Androw");
insert into admin values("admin@234","admin1@gmail.com",9856471230,"shamika");

alter table user add admin_id varchar(20);
alter table user add foreign key (admin_id) references admin(admin_id);

select * from user cross join admin;

select count(*) from user cross join admin; 

select *  from user u inner join admin a where u.admin_id=a.admin_id;

select count(*) from user u inner join admin a where u.admin_id=a.admin_id;








