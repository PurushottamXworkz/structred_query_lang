create database institution;

use institution;

create table department(
dno varchar(10) primary key,
dname varchar(20) not null,
hod_name varchar(20) not null,
registration_date date not null
);

desc department;
-- Insertion operation
insert into department (dno,dname,hod_name,registration_date) values("Mech123","Mechanical dept","Veeru sahastra",'2008-07-14');
insert into department (dno,dname,hod_name,registration_date) values("CompSci123","Computer Science","Harsha K",'2008-10-28');
insert into department (dno,dname,hod_name,registration_date) values("Robotics23","Robotics","Ramesh U",'2009-10-12');
insert into department values("Ele11","Electrical","Kartik K",'2024-08-30');
insert into department values("AutoM21","Automobile","Harish R",'2008-03-04');
-- exctrating data 
select * from department;


create table student(
fname varchar(20) not null,
lname varchar(20),
ssn varchar(20) primary key,
dob date not null,
gender varchar(20)
);
-- Insertion of values into student 
insert into student (fname,lname,ssn,dob,gender) values("Raju","K","01fe21Mech032",'2021-02-21','male');
insert into student (fname,lname,ssn,dob,gender) values("Sony","S","01fe21CSC033",'2020-02-21','female');
insert into student (fname,ssn,dob,gender) values("Kiran","01fe21AUTO022",'2022-01-12','male');
insert into student (fname,lname,ssn,dob,gender) values("Kaveri","Savadi","01fe23RO12",'2023-04-21','female');
insert into student values("Deepak","S","01fe21mca030","2023-08-08","male");
insert into student values("Abhishek","C","17M100U001","2017-07-12","female");

-- describing the table
desc student;

-- exctracting data from table

select * from student; 

-- creation of table
create table library(
book_name varchar(20),
book_number int primary key,
book_author varchar(20),
issued_date date not null,
issued_by varchar(20)
);

-- insert values into the table library
insert into library (book_name,book_number,book_author,issued_date,issued_by) values("Never I had",213,"Devi",'2020-10-10',"Nidhi");
insert into library (book_name,book_number,book_author,issued_date,issued_by) values("Last Ship",214,"Dhanush",'2021-11-01',"Ranjini");
insert into library (book_name,book_number,book_author,issued_date,issued_by) values("Malgudi days",215,"R.K.Narayan",'2020-10-10',"Swamy");
insert into library (book_name,book_number,book_author,issued_date,issued_by) values("Despacito",216,"Paxton",'2019-01-02',"kamala");
insert into library (book_name,book_number,book_author,issued_date,issued_by) values("Sweety",217,"Nexas",'2022-11-14',"Northy");
 
desc library;
-- exctrating data from library 
select * from library;

create table employee(
emp_id varchar(20) primary key,
emp_name varchar(20) not null,
emp_address varchar(20) not null,
emp_department varchar(20) not null
);

insert into employee values("Mech00231","Madhav","Hubli","mechanical");
insert into employee values("Rob00231","Mahesh","Hubli","robotics");
insert into employee values("ComputerSci","Devika","Dharwad","CSC");
insert into employee values("Library01","Sarkar","Mandya","Mechanical");
insert into employee values("Automation021","Shivaji","Pune","Automation");

desc employee;

select * from employee;


create table campus(
name_of_campus varchar(20) not null,
campus_code int primary key,
campus_address varchar(20) not null,
campus_authority varchar(20) not null 
);

insert into campus (name_of_campus,campus_code,campus_address,campus_authority) values("Hubli",1,"Vidyanagar hubli","Shetter");
insert into campus (name_of_campus,campus_code,campus_address,campus_authority) values("Belgum",2,"Hinjewadi Belgum","Bhosle");
insert into campus (name_of_campus,campus_code,campus_address,campus_authority) values("Bengalore",3,"RR Nagar Bangalore","Raman");
insert into campus (name_of_campus,campus_code,campus_address,campus_authority) values("Pune",4,"Shiradi Pune","Ravish");
insert into campus (name_of_campus,campus_code,campus_address,campus_authority) values("Mysore",5,"Gokulum Mysore","Narayan");



desc campus;
select * from campus;


create table designation_of_emp(
emp_designation varchar(10) primary key,
empl_id varchar(20), foreign key(empl_id) references employee(emp_id));

desc designation_of_emp;

select * from employee;

insert into designation_of_emp values("Professor","Rob00231");
insert into designation_of_emp values("Senior Dev","Rob00231");
insert into designation_of_emp values("Junior Dev","Rob00231");
insert into designation_of_emp values("Backend ","Rob00231");
insert into designation_of_emp values("Guide","Rob00231");
insert into designation_of_emp values("Technique","Rob00231");

select * from designation_of_emp;

create table employee(
emp_id varchar(20) primary key,
emp_name varchar(20) not null,
emp_address varchar(20) not null,
emp_department varchar(20) not null
);


alter table employee add emp_salary int;
alter table employee add dno varchar(10);
alter table employee add foreign key(dno) references department(dno);
desc employee;

