-- DISPLAY THE DEPARTMENT LOCATION THAT IS HAVING GREATER THAN FOUR EMPLOYEES IN IT.
select *
from dept
where dept.deptno in (
        select deptno
        from emp
        group by deptno
        having count(empno) > 4
    );
-- LIST THE DEPARTMENT NAMES THAT ARE HAVING AT LEAST 3 EMPLOYES IN IT.
select *
from dept
where dept.deptno IN (
        select deptno
        from emp
        group by deptno
        having count(empno) >= 3
    );
-- LIST DEPARTMENT NAME HAVING AT LEAST 3 SALESMAN.
select *
from dept
where deptno in (
        select deptno
        from emp
        where emp.job = 'SALESMAN'
        group by deptno
        having count(*) >= 3
    );