select * from emp;
-- select the first employee who get hired.
select *
from emp
where emp.hiredate = (
        select min(emp.hiredate)
        from emp
    );