create database function_db;

use function_db;

create table employees(
emp_id int primary key,
emp_name varchar(50),
salary float,
joining_date date);

insert into employees(emp_id,emp_name,salary,joining_date)
values (2534,'Priya',34000.00,'2025-10-01'),
(2505,'Bavya',35000.75,'2025-09-15'),
(2646,'Kiran',31500.20,'2026-01-11'),
(2537,'Divya',31000.99,'2025-12-01'),
(2608,'Sai',32000.40,'2026-02-01');

select * from employees;

SELECT EMP_NAME,round(SALARY) 
FROM EMPLOYEES;

SELECT EMP_NAME,ceil(SALARY)
FROM EMPLOYEES;

SELECT EMP_NAME,floor(SALARY)
FROM EMPLOYEES;

SELECT EMP_NAME,mod(SALARY,1000)
FROM EMPLOYEES;

SELECT concat('Name of the Employee:',"   ",emp_name) as Emp_name
FROM EMPLOYEES;

SELECT EMP_NAME,length(EMP_NAME)
FROM EMPLOYEES;

SELECT upper(EMP_NAME),lower(EMP_NAME)
FROM EMPLOYEES;

SELECT REPLACE(EMP_NAME,'a','@') as emp_name
FROM EMPLOYEES;

SELECT substring(EMP_NAME,1,3) as emp_name
FROM EMPLOYEES;

SELECT CURDATE();
SELECT curtime();
SELECT NOW();
SELECT DATEDIFF(CURDATE(),joining_date) as NO_OF_DAYS_IN_COMPANY
FROM EMPLOYEES;