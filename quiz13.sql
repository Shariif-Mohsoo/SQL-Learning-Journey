-- List the emps of Deptno 30 or 10 joined in the year 1981
select * from emp 
where (emp.deptno = 30 or emp.deptno = 10) 
and 
extract(year from emp.hiredate) = 1981;
-- Display the details of SMITH.
select * from emp where emp.ename='SMITH'; 
-- Display the location of SMITH
select loc from dept
where dept.deptno
in 
(
	select deptno from emp 
	where emp.ename = 'SMITH'
);
-- List the total information of EMP table along
-- with DNAME and Loc of all the emps Working
-- Under ‘ACCOUNTING’ & ‘RESEARCH’ in the asc Deptno. 
select emp.*, dept.dname, dept.loc
from emp
join dept on emp.deptno = dept.deptno
where dept.dname in ('ACCOUNTING', 'RESEARCH')
order by emp.deptno asc;
-- List the Empno, Ename, Sal, Dname of all the ‘MGRS’ and ‘ANALYST’
-- working in New York,Dallas with an exp more than 7 years without 
-- receiving the Comm asc order of Loc. 
select emp.empno, emp.ename, emp.sal, dept.dname
from emp
join dept on emp.deptno = dept.deptno
where emp.job in ('MANAGER', 'ANALYST')
and dept.loc in ('NEW YORK', 'DALLAS')
-- sysdate for oracle and current_date for my and postgre sql gives the current date
and (current_date - emp.hiredate) / 365 > 7  -- Experience greater than 7 years
and emp.comm is null  -- No commission
order by dept.loc asc;
