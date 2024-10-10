-- List all the emps who joined before or after 1981.
 select * from emp where extract(year from hiredate) <> 1981;
-- . List the emps whose Empno not starting with digit 78.
 select * from emp where cast(emp.empno as varchar) not like '78%';
-- List the emps who are working under ‘MGR’
select * from emp where emp.mgr is not null;
-- List the emps who joined in any year but not belongs to the month of March.
select * from emp where extract(month from hiredate) <> 5;
-- List the CLERK of Deptno 20
select * from emp where emp.job = 'CLERK' and emp.deptno = 20;