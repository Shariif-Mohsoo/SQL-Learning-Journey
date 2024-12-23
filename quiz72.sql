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
-- DISPLAY ENAME, SAL OF EMPLOYEES WHO ARE EARNING MORE THAN ANY OF THE ANALYST.
select ename
from emp
where emp.sal > any (
        select sal
        from emp
        where emp.job = 'ANALYST'
    );
-- DISPLAY ALL THE EMPLOYEES WHO ARE EARN LESS THAN ANY OF THE SALESMAN.
select *
from emp
where emp.sal < any (
        select sal
        from emp
        where emp.job = 'SALESMAN'
    );