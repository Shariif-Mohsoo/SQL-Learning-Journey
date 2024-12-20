-- FIND ALL EMPLOYEES DETAIL WHO WORK IN A DEPARTMENT.
-- WITH SCALAR SUB QUERY
select *
from emp
where emp.deptno in (
        select deptno
        from dept
    );
-- WITH CO_RELATED SUB QUERY