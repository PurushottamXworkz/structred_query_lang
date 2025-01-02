create database college;

use college;

create table student(
student_id varchar(10),
student_fname varchar(20),
student_lname varchar(20),
student_father varchar(20),
student_mother varchar(20),
student_adhar bigint,
student_dob date,
student_address varchar(20),
student_bankName varchar(20),
student_accountNum varchar(20)
);

desc student;

insert into student values(121,'Ravi','Kiran','Ramesh','Shamita',123452415241,'1998-12-28','Rajiv nagar BLR','Karnataka Bank',41578452411501);

insert into student values(122,'Raghu','Ravi','Kiran','Keerti',123982415241,'1998-10-28','SLV nagar BLR','Canara Bank',61578452411501);
insert into student values(123,'Rayappa','Kotur','Yellappa','Saraswati',223452415241,'1998-01-28','RR Nagar BLR','KVG Bank',91578452411501);
insert into student values(124,'Shankar','N','Durgesh','Amala',823452415241,'1999-04-20','Ganesh nagar DWD','SBI Bank',51579452411501);
insert into student values(125,'Shama','Farnandis','Joseph','Zoya',973452415241,'1999-04-02','Banaras layout DWD','Axis Bank',63578452411501);
insert into student values(126,'Durga','Kaval','Ujjail','Sushma',223452415241,'1997-01-04','Rajesh nagar Haveri','Karnataka Bank',41078452411500);
insert into student values(127,'John','Smith','Soozan','Sarita',783452415241,'2000-01-08','Raghav nagar Chennai','SBI Bank',41570402411501);
insert into student values(128,'Joyace','K','James','Jenny',563452415241,'1999-01-29','Lahor layout DWD','ICICI Bank',41578052011501);
insert into student values(129,'Ahmad','V','Rajesh','Shama',123402015241,'1999-09-15','Lokesh nagar Hubli','Lotus Bank',91578450401500);
insert into student values(130,'Wong','Waller','Paul','Padlu',823872415241,'1999-10-15','RR nagar BLR','Karnataka Bank',87508452411501);
insert into student values(131,'Borg','Berry','Bunny','Sudha',823552415241,'1999-08-09','Loyiya nagar DWD','KVG Bank',78548452411578);
insert into student values(132,'Stone','Ook','Pushpa','Ragini',9836554415241,'1998-05-07','Haldi nagar UP','Axis Bank',98557452411501);

select * from student;


create table lecturer(
id varchar(10),
fname varchar(20),
lname varchar(20),
father varchar(20),
mother varchar(20),
adhar bigint,
dob date,
address varchar(20),
bankName varchar(20),
accountNum varchar(20)
);

desc lecturer;


insert into lecturer (id,fname,lname,father,mother,adhar,dob,address,bankName,accountNum) 
values(101,'Nitin','reddy','Seenu','Magala',9806554415241,'1985-04-10','Pune','Axis Bank',98557452411501);

insert into lecturer (id,fname,lname,father,mother,adhar,dob,address,bankName,accountNum) 
values(102,'Nitish','yadav','Akil','Archana',5466554415241,'1980-04-14','Utter pradesh','RBI Bank',789546124563287);

insert into lecturer (id,fname,lname,father,mother,adhar,dob,address,bankName,accountNum) 
values(103,'Arun','Kumar','Anjan','Varadhi',9860554415241,'1988-04-01','Karnataka','Canara Bank',789546100563287);

insert into lecturer(id,fname,lname,father,mother,adhar,dob,address,bankName,accountNum)
values(104,'Kiran','Kumar','Sangu','Sarvamma',9860557415241,'1988-10-27','Karnataka','Axis Bank',789040100563280);

insert into lecturer(id,fname,lname,father,mother,adhar,dob,address,bankName,accountNum)
values(105,'Karnan','Kumar','Sarvesh','Sarvamma',9860557415241,'1987-11-27','Karnataka','Axis Bank',78974020053280);

insert into lecturer(id,fname,lname,father,mother,adhar,dob,address,bankName,accountNum)
values(106,'Komal','Krishna','Kartik','karunya',48460557415241,'1989-11-20','Karnataka','Axis Bank',989040100563280);

insert into lecturer(id,fname,lname,father,mother,adhar,dob,address,bankName,accountNum)
values(107,'Priya','Shingri','Partha','Soumya',9060557415241,'1999-01-20','Karnataka','canera Bank',789000100563281);

insert into lecturer(id,fname,lname,father,mother,adhar,dob,address,bankName,accountNum)
values(108,'Soumya','Belgumkar','Avinash','Ananya',9060550415241,'1999-10-02','Bihar','Axis Bank',7890401005639000);

insert into lecturer(id,fname,lname,father,mother,adhar,dob,address,bankName,accountNum)
values(109,'Kiran','Kumar','Mallappa','Lakshmi',1870557415241,'1989-10-05','Telangana','ICICI Bank',789040123563280);

insert into lecturer(id,fname,lname,father,mother,adhar,dob,address,bankName,accountNum)
values(110,'Nisha','Moksha','Maria','Suvarna',2862557415240,'2000-11-28','Karnataka','IDBI Bank',789040100563282);

update lecturer set lname='mokashi' where id=110;

update lecturer set lname='mokash' , father='Hanumanth' where id=110;

update lecturer set lname='Savadi' , father='Hanumanth' where id=109;

delete from lecturer where id=109;

delete from lecturer;

rollback ;

select * from lecturer;

create table department(
Dname varchar(20),
Dnum int,
HOD varchar(20),
Demployees int,
DStaff int
);

insert into department values('Computer Science',1,'Dr.Veeresh',45,30);

insert into department values('Robotics',2,'Dr.Salimath',80,40);

insert into department values('Electronics',3,'Dr.Prabanjan',20,10);

insert into department values('Automation',4,'Dr.Veerayya',78,30);

insert into department values('Mechanical',5,'Dr.Vishnu',40,40);

insert into department values('Mechatronics',6,'Dr.Sarala',15,10);

insert into department (Dname,Dnum,HOD,Demployees,DStaff) values('Mathmatics',7,'Dr.Shilpa',45,45);

insert into department (Dname,Dnum,HOD,Demployees,DStaff) values('Chemistray',8,'Dr.Ashok',55,25);

insert into department (Dname,Dnum,HOD,Demployees,DStaff) values('Physics',9,'Dr.Anita',15,10);

insert into department (Dname,Dnum,HOD,Demployees,DStaff) values('Biology',10,'Dr.Vasu',45,15);

select * from department;

desc department;


create table project(
Pname varchar(20),
Pnum int,
PManager varchar(20),
team_size int,
team_name varchar(20)
);

insert into project (Pname,Pnum,PManager,team_size,team_name) values('News_App',10,'Vasuki',15,'team Sadak');
insert into project (Pname,Pnum,PManager,team_size,team_name) values('Recipe_App',2,'Arun',10,'team Kota');
insert into project (Pname,Pnum,PManager,team_size,team_name) values('Zepto_App',10,'Varun',10,'team Aarya');
insert into project (Pname,Pnum,PManager,team_size,team_name) values('Zudo_App',5,'Abhishekh',5,'team Aadya');

insert into project (Pname,Pnum,PManager,team_size,team_name) values('Uber_App',8,'Abhi',7,'team AJ');

insert into project (Pname,Pnum,PManager,team_size,team_name) values('Ullas_App',6,'Pacchu',8,'team Pacchu');

insert into project values('React_App',2,'Pradoosh',2,'team Zepto');
insert into project values('Hepto_App',10,'Pranav',4,'team Hazar');

insert into project values('Max_App',10,'Sudeep',10,'team Kiccha');

insert into project values('Creation_App',1,'Arjun',5,'team Krish');


select * from project;





 