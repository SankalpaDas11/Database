create database MyDB;
use MyDB;
create table Student( id int primary key auto_increment, 
					sname varchar(20) not null, 
                    sphone bigint(11) not null unique,
                    semail varchar(30) not null unique,
                    sadd varchar(50),
                    squalification varchar(10) not null,
                    sdept varchar(20) );
# add new column
alter table Student add age int after sname;
# modify datatype size
alter table Student modify squalification varchar(20) not null;
# drop column
alter table Student drop column sdept;
# change column name
alter table Student rename to Student_details;
#insert single row
insert into Student_details values (1, 'Pallabi', 28, 7865955229, 'pallabi@gmail.com', 'Durgapur', 'MCS');
insert into Student_details values (2, 'Sankalpa', 23, 6290283564, 'sankalpa@gmail.com', 'Hooghly', 'MSC');
insert into Student_details values (3, 'Chandan', 20, 6291259564, 'chandan@gmail.com', 'Amta', 'B.Com');
insert into Student_details values (4, 'Indrajit', 25, 8910277399, 'indra@gmail.com', 'Behala', 'M.Stat');
insert into Student_details values (5, 'Sohini', 24, 9432273039, 'sohini@gmail.com', 'Rajarhat', 'MTech');
insert into Student_details values (6, 'Arpan', 30, 9674120224, 'arpan@gmail.com', 'Garia', 'Btech');
insert into Student_details values (7, 'Priyanka', 21, 8310259855, 'priyanka@gmail.com', 'Thakurpukur', 'M.A');
insert into Student_details values (8, 'Shimanto', 19, 8013078921, 'shimanto@gmail.com', 'Habra', 'B.Sc');
insert into Student_details values (9, 'Shibajee', 25, 9830162208 , 'shibajee@gmail.com', 'Sonarpur', 'M.Sc');
insert into Student_details values (10, 'Aritra', 17, 9674588964 , 'aritra@gmail.com', 'Howrah', 'B.Sc');

truncate Student_details;
drop table Student_details;