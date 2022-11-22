use MyDB;
create table Players( id int primary key auto_increment, 
					pname varchar(20) not null, 
                    goals int(3) not null unique,
                    country varchar(30) not null,
                    club varchar(50),
                    position varchar(20) );
alter table Players rename to Players_details;
insert into Players_details values (1, 'Messi', 15, 'Argentina', 'PSG', 'Attacker');
insert into Players_details values (2, 'C.Ronaldo', 12, 'Portugal', 'Man U', 'Attacker');
insert into Players_details values (3, 'Chetri', 20, 'India', 'Bangaluru Fc', 'Attacker');
insert into Players_details values (4, 'Pritam', 1, 'India', 'ATK MB', 'Defender');

truncate Players_details;
drop table Players_details;