use students;

select * from cricketer; 
select * from jersey;

create table latestMovie (
id int primary key auto_increment,
movie varchar(20) not null,
actorId int);

create table spouse (
id int primary key auto_increment,
name varchar(20) not null,
actorId int);

select * from actorlist;
select * from latestMovie;

insert into latestMovie (movie,actorId) values
("Goat",1),
("Thug Life",5),
("GBU",2),
("Animal",7),
("F1",10);

insert into spouse(name,actorId) values
("sangeetha",1),
("Shalini",2),
("Ana",7);

select * from actorlist inner join
latestMovie On
actorlist.id=latestMovie.actorId;

select actorlist.name,latestmovie.movie from actorlist inner join
latestMovie On
actorlist.id=latestMovie.actorId;

select a.name,l.movie from actorlist a inner join
latestMovie l On
a.id=l.actorId;
SELECT a.name,l.movie, s.name as spouseName
FROM actorlist a INNER JOIN
latestmovie l ON a.id=l.actorId inner join 
spouse s on s.actorId=a.id;

select * from actorlist left join
latestMovie on 
actorlist.id=latestMovie.actorId;

select * from actorlist right join
latestMovie on 
actorlist.id=latestMovie.actorId;

-- full outer join is not supported in mysql,we can use union--  

select * from actorlist left join
latestMovie on 
actorlist.id=latestMovie.actorId
union
select * from actorlist right join
latestMovie on 
actorlist.id=latestMovie.actorId;

select * from 
actorlist cross join latestMovie;

select * from cricketer inner join jersey on
cricketer.id=jersey.playerId;

select * from cricketer c1 left join cricketer c2
on c1.id=c2.isActive;


