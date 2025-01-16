--  5 queries

--6. Display all the details of all ‘Mgrs’ 
select * from emp 
where emp.empno in 
(
    select mgr from emp
);
--7. List the emps who joined before 1981. 
select * from emp
where emp.hiredate <  to_date('01-01-1981', 'DD-MM-YYYY');;

--8. List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal. 
select emp.empno,emp.ename,emp.sal,(emp.sal / 30) as daily_sal from emp
order by emp.sal * 12;

--9. Display the Empno, Ename, job, Hiredate, Exp of all Mgrs 
select emp.empno,emp.ename,emp.job,emp.hiredate,
age(CURRENT_DATE,emp.hiredate) as exp
from emp where emp.empno in (
    select mgr from emp where mgr is not null
);

--10. List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369.
select emp.empno,emp.ename,emp.sal,
age(CURRENT_DATE,emp.hiredate) as exp
from emp where emp.mgr = 7369;

