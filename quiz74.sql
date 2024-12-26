-- DISPLAY ALL THE EMPLOYEE WHOSE SALARY IS GREATER THAN AVERAGE SALARY OF DEPARTMENT 30.
select *
from emp
where emp.sal > (
        select round(avg(sal), 1)
        from emp
        where emp.deptno = 30
    )
order by sal;
-- DISPLAY DEPARTMENT WISE MINIMUM SALARY WHICH IS LESS THAN AVERAGE SALARY OF EMPLOYEES.
select deptno,
    min(sal)
from emp
group by deptno
having min(sal) < (
        select round(avg(sal))
        from emp
    );
-- DISPLAY ALL THE EMPLOYEES WHOSE SALARY IS GREATER THAN AVG SAL OF DEPARTMENT 20.
select *
from emp
where emp.sal > (
        select round(avg(sal))
        from emp
        where deptno = 20
    );