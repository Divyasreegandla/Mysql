use students;

create table cricketer(
id int primary key auto_increment,
name varchar(20) not null,
email varchar(100) unique not null,
isActive boolean default 1,
noOfCenturies int check(noOfCenturies>10)
);

insert into cricketer(name,email,noOfCenturies)
values("Virat Kohli","vk@gmail.com",85),
("Rohit sharma","rs@gmail.com",50),
("KL Rahul","kl@gmail.com",21);

select * from cricketer;

insert into cricketer(name,email,noOfCenturies)
values("Abishek Sharma","as@gmail.com",2);

insert into cricketer(name,email,noOfCenturies,isActive)
values("Sachein Tendulkar","st@gmail.com",100,0),
("MS Dhoni","msg@gmail.com",16,0),
("Baian Laura","bl@gmail.com",53,0);

create table jersey(
id int primary key auto_increment,
jersey int not null,
playerId int not null,
foreign key (playerId) references cricketer(id));

insert into jersey(jersey,playerId)
values (18,1),(7,5),(10,4);

select * from jersey;


update jersey set jersey=10
where id=3;

