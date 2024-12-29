select * from emp;
-- select the first employee who get hired.
select *
from emp
where emp.hiredate = (
        select min(emp.hiredate)
        from emp
    );

-- select the employee who mgr is BLAKE;
select *
from emp
where emp.mgr in (
        select empno
        from emp
        where emp.ename = 'BLAKE'
    );

