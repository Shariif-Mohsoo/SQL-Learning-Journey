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

-- select the employee with maximum salary.
select *
from emp
where emp.sal = (
        select max(sal)
        from emp
    );

-- select the emp with second maximum salary
select * from emp order by sal limit 1;


