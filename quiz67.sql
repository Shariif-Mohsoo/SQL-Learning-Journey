-- Display the hiredate of the manager of SMITH.
select hiredata
from emp
where emp.empno in (
        select mgr
        from emp
        where emp.ename = 'SMITH'
    );
-- Display the job of the manager of employee JONES.
select job
from emp
where emp.empno in (
        select mgr
        from emp
        where emp.ename = 'JONES'
    );
-- Display the details of the manager of employee FORD.
select *
from emp
where emp.empno in (
        select mgr
        from emp
        where emp.ename = 'FORD'
    );