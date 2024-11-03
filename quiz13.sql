-- 36. List the emps of Deptno 30 or 10 joined in the year 1981. 
    select * from emp where emp.deptno in (30,10) and to_char(emp.hiredate,'YYYY') = '1981';   
-- 37. Display the details of SMITH. 
    select * from emp where emp.ename = 'SMITH';
-- 38. Display the location of SMITH. 
select dept.loc from dept
where dept.deptno in 
(
    select emp.deptno from emp where emp.ename='SMITH'
);
-- 39. List the total information of EMP table along with DNAME and Loc of all the emps 
-- Working Under ‘ACCOUNTING’ & ‘RESEARCH’ in the asc Deptno. 
    select emp.*,dept.dname,dept.loc from emp
    left join dept on emp.deptno = dept.deptno
    where dept.dname in ('ACCOUNTING' , 'RESEARCH')
    order by emp.deptno asc;
-- 40. List the Empno, Ename, Sal, Dname of all the ‘MGRS’ and ‘ANALYST’
--  working in New York, Dallas with an exp more than 7 years without receiving the Comm asc order of Loc.
select emp.*,dept.dname 
from emp join dept on 
emp.deptno = dept.deptno
and dept.loc in ('NEW YORK','DALLAS')
-- sysdate for oracle and current_date for my and postgre sql gives the current date
and (current_date - emp.hiredate) / 365 > 7  -- Experience greater than 7 years
and emp.comm is null
order by dept.loc asc;

