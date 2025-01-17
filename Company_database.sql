create database company;
use company;

create table department(
department_name varchar(20) unique,
department_number varchar(20) primary key,
manager_start_date date);

create table department_locations(
number_of_projects varchar(20),
department_number varchar(20),
foreign key (department_number) references department (department_number));

create table employee(
employee_first_name varchar(20),
employee_mid_name varchar(20),
employee_last_name varchar(20),
employee_SSN varchar(20) primary key,
date_of_birth date,
salary int(10),
gender varchar(20),
address varchar(20),
supervisor_ssn varchar(20),
department_number varchar(20));


	
