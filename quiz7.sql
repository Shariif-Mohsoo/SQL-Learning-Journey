-- Display all the details of all ‘Mgrs’
select * from emp where emp.empno in (
		select distinct mgr from emp
);
-- . List the emps who joined before 1981
select * from emp where emp.hiredata < '1981-01-01';
-- List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
select empno,ename,sal,(sal/30) as dailySal
from emp order by (sal * 12);
-- Display the Empno, Ename, job, Hiredate of all Mgrs
select empno,ename,job,hiredate from emp where emp.empno in
(
	select distinct mgr from emp
);
-- List the Empno, Ename, Sal of all emps working for Mgr 7369. 
select empno, ename, sal from emp where mgr = 7369;


