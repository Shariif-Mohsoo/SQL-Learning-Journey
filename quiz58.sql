--1 Write a query to display all the department names along with number of employees working in.
--2 Write a query to display all the department names where number of employees are less than 2.
--3 Write a query to display the names of all employees; dept in which number of employees are less than 2.
-- GIVEN TABLE.
create table employee (
    eid int primary key,
    ename varchar(30),
    dept varchar(30),
    salary int
);
-- insertion
insert into employee
values (1, 'Hashir', 'HR', 1000),
    (2, 'Hamid', 'MRKT', 1000),
    (3, 'Hashim', 'HR', 1000),
    (4, 'Humais', 'MRKT', 1000),
    (5, 'Huri Bahi', 'IT', 1000);
-- select
select *
from employee;
-- 1- SOLUTION.
select count(employee.eid) as numberOfEMP,
    dept as deptName
from employee
GROUP BY dept;
-- 2- SOLUTION.
select dept
from employee
group by dept
having count(employee.eid) < 2;
-- 3- SOLUTION.
select dept 
from employee
group by dept
having count(employee.eid) < 2;