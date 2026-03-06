create database joins_db;

use joins_db;

-- Table:1: Departments--

create table departments (
dept_id int primary key,
dept_name varchar(50)
);

-- Table:2: Employees--

create table employees (
emp_id int primary key,
emp_name varchar(50),
salary float,
dept_id int,
foreign key(dept_id) references
departments(dept_id)
);

-- Inserting in Departments table---

insert into departments 
values (1001,"Data Analyst"),
(1002,"Associate Software"),
(1003,"SQL Developer"),
(1004,"Devops Engineer"),
(1005,"AI/ML Engineer"),
(1006,"Python Developer")
;

select * from departments;

-- Inserting in Employees table---

insert into employees
values (201,"Kiran",50000.00,1002),
(202,"Ramesh",40000.99,1001),
(203,"Latha",45000.00,1003),
(204,"Priya",55000,1004),
(205,"Ravi",60000.99,1005),
(206,"Deva",55000.50,1006),
(207,"Vijay",45000.99,1002),
(208,"Karan",50000.50,1005);

select * from employees;

-- inner join-- 

select e.emp_id,e.emp_name,d.dept_name
from employees e
inner join departments d on
e.dept_id=d.dept_id;

-- Left Outer Join-- 

select e.emp_id,e.emp_name,d.dept_name
from employees e
left join departments d on
e.dept_id=d.dept_id;

-- Right outer join-- 

select e.emp_id,e.emp_name,d.dept_name
from employees e
right join departments d on
e.dept_id=d.dept_id;

-- Full Outer Join-- 


select e.emp_id,e.emp_name,d.dept_name
from employees e
left join departments d on
e.dept_id=d.dept_id
union
select e.emp_id,e.emp_name,d.dept_name
from employees e
right join departments d on
e.dept_id=d.dept_id;


-- Cross Join-- 

select e.emp_id,e.emp_name,d.dept_name
from employees e
cross join departments d;

-- select count(*) as total_rows from
-- employees cross join departments;



