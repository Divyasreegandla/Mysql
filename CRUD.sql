use students;

insert into actorlist (id,name,age)
values
(1,"Vijay",53),
(2,"Ajith",54),
(3,"Rajini",74),
(4,"Prabhas",45),
(5,"Kamal Kassan",70),
(6,"Balayya",56);

insert into actorlist values(1,"Ranveer Kapoor",47);
insert into actorlist values(7,"Pavan Kalyan",62);

select * from actorlist;
select * from actorlist
where name="Balayya";

update actorlist set age=65 
where id=6;

update actorlist set name="Kamal Haasan",age=71
where id=5;

delete from actorlist
where id=1;



set sql_safe_updates=0;