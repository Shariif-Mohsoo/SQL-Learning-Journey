-- DISPLAY THE DEPARTMENT LOCATION THAT IS HAVING GREATER THAN FOUR EMPLOYEES IN IT.
select *
from dept
where dept.deptno in (
        select deptno
        from emp
        group by deptno
        having count(empno) > 4
    );