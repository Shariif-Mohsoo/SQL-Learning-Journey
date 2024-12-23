-- to find last date
select max(hiredata)
from emp;
-- DISPLAY ALL THE EMPLOYEE WHOSE DEPARTMENT IS SALES AND 
-- WHO IS EARNING SOME COMMISSION (I.E COMMISSION IS NOT NULL
-- OR ZERO) AND WHO IS HIRED BEFORE THE LAST PERSON HIRED.
select *
from emp
where emp.deptno = (
        select deptno
        from dept
        where dept.dname = 'SALES'
    )
    and emp.comm > 0
    and emp.hiredata < (
        select max(hiredata)
        from emp
    );