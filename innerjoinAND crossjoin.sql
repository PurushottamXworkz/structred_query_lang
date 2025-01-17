create database youtube;

use youtube;


create table admin(
admin_id varchar(20) primary key,
admin_email varchar(20) not null,
admin_contact varchar(20) not null,
admin_name varchar(20) not null
);

alter table admin modify admin_contact bigint not null;
desc admin;

insert into admin values("admin@123","admin@gmail.com",8745965241,"Admin123");

select * from admin;

create table categories(
educational varchar(20) not null,
news varchar(20) not null,
movies varchar(20) not null,
songs varchar(20) not null
); 

insert into categories values("Technology","National","Comedy","MAD trip");
insert into categories values("Health","State","Tragedy","Yagna");
insert into categories values("Travel","Political","Horror","Udit N");
insert into categories values("Social","Entertainment","Thriller","S P Bal");
select * from categories;



create table education(
video_id varchar(20) primary key,
video_name varchar(20) not null,
content_by varchar(20) not null,
length_of_video varchar(20) not null
);
alter table education modify length_of_video time;
insert into education values ("edu_123","Tech_edu","Striver",'00:35:54',"admin@123");
insert into education values ("heal_123","Health_edu","Dr.Ram",'00:12:15',"admin@123");
insert into education values ("travel_123","Travel_edu","Dr.Bro",'01:30:15',"admin@123");
insert into education values ("social_123","history_edu","Jayalakshmi","05:12:13","admin@123");
insert into education values ("heal_124","Health_edu","Dr.sudeep",'00:15:28','admin@123');
select * from education;




alter table education add column admin_id varchar(20);
alter table education add  foreign key (admin_id) references admin(admin_id);


desc education;

create table news(
news_id varchar(20) primary key,
news_name varchar(20) not null,
reported_by varchar(20) not null,
length_of_news varchar(20) not null
);

insert into news values("123_news","National_news","John",'00:25:30','admin@123','2025-01-12');
insert into news values("124_news","Political_news","Harish",'00:20:30','admin@123','2024-05-12');
insert into news values("125_news","State_news","Chandana",'00:18:30','admin@123','2024-12-12');
insert into news values ("126_news","Entertainment_news","Sara",'00:28:10','admin@123','2025-01-10');
select * from news;

alter table news add column reported_time time;
alter table news modify reported_time date; 

alter table news add column admin_id varchar(20);
alter table news add foreign key (admin_id) references admin(admin_id); 

desc news;


create table movies(
movies_id varchar(20) primary key,
movie_name varchar(20) not null,
movie_by varchar(20) not null,
length_of_movies varchar(20) not null
);

insert into movies values('movie_123','Toxic','Yash','02:45:17','admin@123');
insert into movies values('movie_124','Max','Sudeep','02:40:15','admin@123');
insert into movies values('movie_125','Torrent_Game','Alex','02:15:15','admin@123');
insert into movies values('movie_126','Pappilon','Henry','02:10:14','admin@123');
select * from movies;
alter table movies add column admin_id varchar(20);
alter table movies add foreign key (admin_id) references admin(admin_id);
desc movies;

create table songs(
song_id varchar(20) primary key,
song_name varchar(20) not null,
song_by varchar(20) not null,
length_of_song varchar(20) not null
);
alter table songs modify length_of_song time;
insert into songs values('song_234','Tora tora','Depeche Mode','00:03:15','admin@123');
insert into songs values('song_235','Main hoon naa','Sonu nghum','00:05:10','admin@123');
insert into songs values('song_236','Bhool bholiya','KK','00:03:15','admin@123');
insert into songs values('songs_237','Baar baar','Honey singh','00:03:05','admin@123');

select * from songs;
alter table songs add column admin_id varchar(20);
alter table songs add foreign key (admin_id) references admin(admin_id);

desc songs;

select * from admin;

select * from categories;

select * from education;
select * from movies;
select * from news;
select * from songs;

select * from education cross join admin;
select * from movies cross join admin;
select * from admin cross join news;
select * from songs cross join admin;

select count(*) from education cross join admin;
select count(*) from movies cross join admin;
select count(*) from news cross join admin;
select count(*) from songs cross join admin;

select video_id,video_name from education e inner join admin a where e.admin_id=a.admin_id;
select * from education e inner join admin a where a.admin_id=e.admin_id;
select count(*) from education e inner join admin a where e.admin_id=a.admin_id;

select * from movies cross join admin;
select count(*) from movies m cross join admin a where m.admin_id=a.admin_id; 
select movie_name,movie_by from movies m inner join admin a where m.admin_id=a.admin_id;

select * from news inner join admin;
select * from news cross join admin;
select count(*) from news cross join admin;
select count(*) from news inner join admin;

select * from movies cross join education cross join news;
select * from education inner join news inner join admin; 
select * from admin cross join songs inner join news;
select * from admin inner join songs inner join news; 

select count(*) from admin inner join news inner join movies;
select count(*) from movies inner join education inner join songs;
select * from movies inner join education inner join songs;

select * from movies cross join education cross join songs; 
select count(*) from movies cross join education cross join songs;


select * from movies inner join songs where movies.admin_id=songs.admin_id;
select count(*) from movies inner join songs where movies.admin_id= songs.admin_id;

select * from movies natural join songs;
select count(*) from movies natural join songs;

select * from admin natural join movies;
select * from admin natural join education;
select * from admin natural join news;
select * from admin natural join songs;

select * from movies natural join education;
select * from education natural join news;
select * from songs natural join admin;


select * from movies left outer join songs on movies.admin_id=songs.admin_id; 
select count(*) from songs s left join movies m on s.admin_id=m.admin_id;


select * from songs left outer join education on songs.admin_id=education.admin_id;
select count(*) from songs left outer join education on songs.admin_id=education.admin_id;

select * from news n left outer join movies m on m.admin_id=n.admin_id;
select count(*) from news n left outer join movies on n.admin_id=movies.admin_id;  

select * from news right outer join songs on news.admin_id=songs.admin_id; 
select * from movies right join news on news.admin_id=movies.admin_id;

select * from news n right outer join movies m on m.admin_id=n.admin_id;
select count(*) from news n right outer join movies on n.admin_id=movies.admin_id;  


-- full join 
select * from news left join movies on news.admin_id=movies.admin_id
 union
select * from news right join songs on news.admin_id=songs.admin_id;


-- self join 
select *
from movies as movie1  
join movies as movie2 
on movie1.movies_id =movie2.movies_id; 

select movie1.movie_name , movie1.movie_by
from movies as movie1
join movies as movie2
on movie1.movie_by=movie2.movie_by;

select education1.video_id,education1.content_by,education1.video_name
from education as education1
join education as education2
on education1.content_by=education2.content_by;

select admin1.admin_name,admin1.admin_email from admin as admin1
join admin as admin2
on admin1.admin_name=admin2.admin_name;

select  song1.song_id, song1.song_name
from songs as song1
join songs as song2
on song1.song_name=song2.song_name;


-- subquery 
select * from movies;
select length_of_movies from movies order by length_of_movies desc;
select min(length_of_movies) from movies  order by length_of_movies asc;
select length_of_movies,movie_name from movies;
select min(length_of_movies) from movies;

select length_of_movies as second_min_length from movies where length_of_movies >(
select min(length_of_movies) from movies);

select min(length_of_movies) as second_min_length from movies where length_of_movies >(
select min(length_of_movies) from movies);

select max(length_of_movies) as third from movies where length_of_movies <(
select max(length_of_movies) as second_max_length from movies where length_of_movies <(
select max(length_of_movies) from movies));



