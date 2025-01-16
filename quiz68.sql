-- FIND ALL EMPLOYEES DETAIL WHO WORK IN A DEPARTMENT.
-- WITH SCALAR SUB QUERY
select *
from emp
where emp.deptno in (
        select deptno
        from dept
    );
-- WITH CO_RELATED SUB QUERY
select *
from emp
where exists (
        select *
        from dept
        where dept.deptno = emp.deptno
    );

-- FIND ALL EMPLOYEES DETAIL WHO DON'T WORK IN A DEPARTMENT.
-- WITH SCALAR SUB QUERY
select *
from emp
where emp.deptno not in (
        select deptno
        from dept
    );

-- WITH CO_RELATED SUB QUERY
select *
from emp
where not exists (
        select *
        from dept
        where dept.deptno = emp.deptno
    );


