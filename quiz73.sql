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
    );