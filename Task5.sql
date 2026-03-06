-- Create the database --

create database subquery_db;

use subquery_db;

-- Create the employees table --
create table employees (
emp_id int primary key auto_increment,
emp_name varchar(50),
salary float,
department varchar(50)
);

-- Insert records --

insert into employees (emp_name, salary, department) 
VALUES ('Kiran', 50000, 'Engineering'),
('Divya', 45000, 'Marketing'),
('Cherry', 52000, 'Engineering'),
('Deva', 70000, 'Design'),
('Kumar', 80000, 'Engineering'),
('Navya', 48000, 'Design'),
('Gowri', 60000, 'Marketing'),
('Hima', 80000, 'HR'),
('Ayaan', 50000, 'Design'),
('Sarthak', 60000, 'HR');

select * from employees;

-- Single Row Subquery --

select avg(salary) from employees; -- 59500 --

select emp_name,salary 
from employees
where salary > (select avg(salary) from employees);

select max(salary) from employees;   -- 80000--

select emp_name,salary
from employees
where salary=(select max(salary) from employees);

select salary from employees where emp_name="Ayaan"; -- 50000 --

select emp_name,salary
from employees
where salary >
(select salary from employees where emp_name="Ayaan");

-- Multiple Row Subqueries --

select department from employees 
where salary > 75000;   -- Engineering,HR --

select emp_name,department
from employees
where department in 
(select department from employees where salary > 75000);

select salary,department from employees
where department="Engineering";  -- 50000,52000,80000 --

select emp_name,salary,department
from employees
where salary > any 
(select salary from employees where department="Engineering");

select salary from employees 
where department="Design";  -- 70000,48000,50000 --

select emp_name,salary,department
from employees
where salary > all
(select salary from employees where department="Design");

 -- Correlated Subquery --
 
select department,avg(salary) from employees
group by department;        -- E:60666,M:52500,D:56000,HR:70000 --

select emp_name,salary,department
from employees e1 
where salary > (select avg(salary) from employees e2
where e2.department=e1.department);

