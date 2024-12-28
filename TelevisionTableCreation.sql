create database electronicDevices;

use electronicDevices;

create table television(
television_id varchar(12),
television_brand varchar(20),
distributor_phone bigint,
distributor_address varchar(20),
purchase_date date,
bill float
);

insert into television values(142,'DEll',7895421014,'Shivaji pune','2024-12-27',1899.99);
insert into television values(148,'DEll',7895421014,'Shivaji chowk pune','2024-12-27',1799.99);
insert into television values(98,'DEll',7895421014,'Jublee circle DWD','2024-12-27',1999.99);
insert into television values(157,'DEll',7895421014,'Harsha pune','2024-12-27',2599.99);
insert into television values(55,'DEll',7895421014,'Sangeetapune','2024-12-27',4599.99);

insert into television values(132,'DEll',7895428014,'Harsha pune','2024-12-27',8899.99);
insert into television values(140,'DEll',7895424014,'Shivaji chowk pune','2024-12-27',2799.99);
insert into television values(894,'DEll',7895491014,'Harsha DWD','2024-12-27',1989.99);
insert into television values(985,'DEll',7895491014,'Harsha pune','2024-12-27',5599.99);
insert into television values(107,'DEll',7895471014,'Sangeeta pune','2024-12-27',1599.99);

insert into television (television_id,television_brand,distributor_phone,distributor_address,purchase_date,bill)
 values(110,'DEll',7895481014,'Sanghum pune','2024-12-27',1589.99);


insert into television (television_id, television_brand , distributor_phone, distributor_address , date , payment )
values(110,'DEll',7895481014,'Sanghum pune','2024-12-27',1589.99);


select * from television;


alter table television modify column television_id int;

alter table television rename column bill to payment;

alter table television rename column purchase_date to date;

desc television;

rename table television to tv;
drop table tv;

alter table television add column distributor_id int;

alter table television drop column distributor_id;
