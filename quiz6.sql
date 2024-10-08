-- select all the data from emp table.
select * from emp;
-- select unique jobs from emp table.
select distinct job from emp;
-- list the employees in assending order of their salaries.
select * from emp order by sal;
-- list the detail of employees in asc order of deptno and desc order of jobs.
select * from emp order by deptno asc,job desc;
-- display all the unique job groups in desc order.
select distinct job from emp order by job desc;