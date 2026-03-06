use students;
select * from actorlist;
select "Hero" as result;

select round(99.49) as result;
select ceil(99.000001) as result;

select floor(99.9999) as result;

select mod(55,4) as result;

select concat("hello"," ","world","....!") as result;

select length("priyanka") as result;

select upper("Priyanka") as result;

select lower("Priyanka") as result;

select replace("Hello Hello Hello Hello world","Hello","Hi") as result;

select substring("Hello Hello Hello world",19,5) as result;

select curdate() as result;
select curtime() as result;
select now() as result;

select datediff("2026-02-28","2026-02-25") as result;

select datediff("2026-02-28",curdate()) as result;

select * from actorlist;

select concat("His name is ",name) as 
actorName from actorlist;

SELECT CONCAT(
    'His name is ',
    UPPER(name),
    '. He is ',
    age,
    ' years old.'
) AS actorName
FROM actorlist;
 
