-- LIST THE EMPLOYEES WHO JOINED AFTER 2 YEARS 
-- OF FIRST EMPLOYEE OF THE COMPANY AND MORE THAN BLAKE SALARY.
select *
from emp
where emp.hiredata > (
        select min(hiredata) +(365 * 2)
        from emp
    )
    and emp.sal > (
        select sal
        from emp
        where emp.ename = 'BLAKE'
    ) -- DISPLAY LAST EMPLOYEE RECORD ACCORDING TO EMPNO.
select *
from emp
where emp.empno = (
        select max(empno)
        from emp
    );
-- DISPLAY ALL THE EMPLOYEE WHOSE SALARY IS GREATER 
-- THAN AVERAGE SALARY OF DEPARTMENT 30.
select *
from emp
where emp.sal > (
        select round(avg(sal), 2)
        from emp
        where emp.deptno = 30
    );