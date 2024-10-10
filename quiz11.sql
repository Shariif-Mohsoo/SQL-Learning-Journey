-- List the emps whose Sal is four digit number ending with Zero
select * 
from emp
where emp.sal >= 1000 
and emp.sal <= 9999 
and emp.sal % 10 = 0;
-- List the emps whose names having a character set ‘ll’ together. 
select * from emp where emp.ename like '%ll%';
-- List the emps those who joined in 80’s. 
select * from emp where extract(year from hiredate) between 1980 and 1989; 
-- List the emps who does not belong to Deptno 20
select * from emp where emp.deptno <> 20;
-- List all the emps except ‘PRESIDENT’ & ‘MANAGAR” in asc order of Salaries.
select * from emp where emp.job 
not in ('PRESIDENT','MANAGAR')
order by emp.sal asc;
