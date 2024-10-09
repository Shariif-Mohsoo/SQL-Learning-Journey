-- List the emp who are working for the Deptno 10 or 20.
select * from emp where emp.deptno = 10 or emp.deptno = 20;
-- . List the emps who are joined in the year 81
select * from emp 
where 
emp.hiredate > '1981-01-01' 
and 
emp.hiredate < '1982-01-01';
 -- List the emps who are joined in the month of Aug 1980
 select * from emp
 where 
 emp.hiredate >= '1980-08-01' 
 and 
 emp.hiredate < '1980-09-01';
 -- List the emps Who Annual sal ranging from 22000 and 45000.
 select * from emp
 where 
 (emp.sal * 12) >= 22000 
 and 
 (emp.sal * 12) <= 45000;
-- List the Enames those are having five characters in their Names
select * from emp
where emp.ename like '_____';

