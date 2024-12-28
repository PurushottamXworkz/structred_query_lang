create database country;

use country;

create table citizen(
citizen_id varchar(12),
citizen_name varchar(20),
citizen_phone bigint,
citizen_gender char(1),
citizen_address varchar(20),
citizen_dob date
);

desc citizen;