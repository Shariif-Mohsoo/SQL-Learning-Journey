-- DISPLAY ALL THE EMPLOYEE WHOSE SALARY IS GREATER THAN AVERAGE SALARY OF DEPARTMENT 30.
select *
from emp
where emp.sal > (
        select round(avg(sal), 1)
        from emp
        where emp.deptno = 30
    )
order by sal;