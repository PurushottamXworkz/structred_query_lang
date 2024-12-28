create database marrige;

use marrige;

create table catering(
dish_id varchar(12),
dish_name varchar(20),
catering_phone bigint,
dish_type char(5),
order_date date,
order_number int,
total_bill float
);

alter table catering modify dish_id int;

alter table catering rename column total_bill to bill;
desc catering;

rename table catering to cooking;

alter table cooking add column no_of_varieties int;
desc cooking;

alter table cooking drop column no_of_varieties;