-- Write a query to display all the department names along with number of employees working in.
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
-- - SOLUTION.
select count(employee.eid) as numberOfEMP,
    dept as deptName
from employee
GROUP BY dept;