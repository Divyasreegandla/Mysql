create database training_db;

use training_db;

create table animals(
animal_id int primary key,
name varchar(20),
bread char(3),
details text,
weight float,
is_healthy boolean,
arrival_date date,
arrival_time time); 

insert into animals
values(1,"Lion","AFR","Very social",190.5,TRUE,"2025-05-12","10:51:00"),
(2,"Cheetah","AFR","Extremely fast",52,TRUE,"2025-06-11","09:01:00"),
(3,"Tiger","BEN","Prefers swimming",220.5,TRUE,"2024-02-21","7:00:00"),
(4,"Leopard","IND","Climbing trees",65.0,TRUE,"2026-01-01","10:30:00"),
(5,"Snake","PYT","Required special temp.",12.8,FALSE,"2025-07-05","11:30:00")
;

insert into animals
values(6,"Lion","AFR","Very social",190.5,TRUE,"2025-05-12","10:51:00");

select * from animals;

update animals set is_healthy=TRUE where animal_id=5;

DELETE from animals where animal_id=6;


select * from animals 
where name="Tiger";

select * from animals 
where name!="snake";

select * from animals 
where name<>"lion";

select name from animals 
where weight>50;

select name from animals
where weight<50;

select name,arrival_date from animals
where arrival_date>="2025-01-01";

select animal_id,name,arrival_date from animals
where arrival_date<="2025-01-01";

SELECT * FROM ANIMALS 
WHERE WEIGHT between 50 AND 150;

SELECT * FROM ANIMALS WHERE BREAD IN ('AFR','IND');

SELECT * FROM ANIMALS WHERE NAME LIKE 'L%';
SELECT * FROM ANIMALS WHERE NAME LIKE '%A%';
SELECT * FROM ANIMALS WHERE NAME LIKE '_____';
SELECT * FROM ANIMALS WHERE NAME LIKE '%E';

SELECT * FROM ANIMALS
WHERE NAME='LION' AND BREAD='AFR';

SELECT * FROM ANIMALS 
WHERE NAME='CHEETAH' OR NAME='TIGER'; 

SELECT * FROM ANIMALS
WHERE NOT BREAD='IND';

SELECT * FROM ANIMALS
WHERE IS_HEALTHY=TRUE AND (NAME='LION' OR BREAD='AFR');


