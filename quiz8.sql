-- Display all the details of the emps whose Comm. Is more than their Sal
select * from emp where emp.comm > emp.sal;
-- List the emps in the asc order of Designations of those joined 
-- after the second half of 1981(July 1, 1981)
select * from emp where emp.hiredate > '1981-07-01' order by emp.job;
-- List the emps Daily Sal is more than Rs.100.
select * from emp where (emp.sal / 30) > 100;
-- List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order.
select * from emp where emp.job = 'CLERK' or emp.job = 'ANALYST';
-- List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of
-- seniority. 
select *
from emp
where emp.hiredate 
in ('1981-05-01', '1981-12-03', '1981-12-17', '1980-01-19')
order by emp.hiredate asc;

