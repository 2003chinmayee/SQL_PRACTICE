create database CompanyDB;
use CompanyDB;


create table Employees ( emp_id int primary key,
first_name varchar(50),last_name varchar(50),
salary decimal,department varchar(50));

insert into Employees(emp_id,first_name,last_name,salary, department) 
values (1,'rohit','gavade',45000,'mechanical'),
(2,'rohan','patil',35000,'biology'),
(3,'dev','patil',45000,'computer'),
(4,'rohan','gavde',65000,'biology'),
(5,'chinmayee','patil',30000,'biology')

select * from Employees;

select * from Employees where salary> 45000;


select  concat(first_name, '',last_name) as full_name from Employees;


select sum(salary)  from Employees; 

select avg(salary)  from Employees; 
select department ;
SELECT department, COUNT(emp_id) AS employee_count
FROM Employees
GROUP BY department;
