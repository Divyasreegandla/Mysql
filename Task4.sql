create database aggregation_db;
use aggregation_db;

create table employees(
emp_id int primary key auto_increment,
emp_name varchar(50) not null,
salary float,
department varchar(50) not null
);

insert into employees
(emp_name,salary,department) values
("Deva",45000.00,"Engineering"),
("Gowri",40000.90,"Marketing"),
("Shiva",40000.00,"Sales"),
("Karthik",50000.80,"Engineering"),
("Ayaan",50000.00,"Design"),
("Sarthak",40000.00,"Sales"),
("Yuvansh",45000.00,"Design");

select count(emp_id) from employees;
select max(salary) from employees;
select min(salary) from employees;
select sum(salary) from employees;
select avg(salary) from employees;

select department,sum(salary) total_dept_sal
from employees group by department;

select department,avg(salary) avg_dept_sal
from employees group by department;

select department,count(emp_id) emp_count
from employees group by department;

select * from employees
where department="Engineering";

select * from employees
where salary>45000;

select department,sum(salary) total
from employees
group by department
having sum(salary)>50000;

select department,max(salary) 
from employees
group by department
having max(salary)>40000;
