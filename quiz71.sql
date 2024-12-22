-- Write a query to display employee name , job of all employees who are 
-- working as manager and works at CHICAGO.
select ename,
    job
from emp
where emp.job = 'MANAGER'
    and emp.deptno in (
        select deptno
        from dept
        where loc = 'CHICAGO'
    );
-- List the employees who have commission greater than the maximum salary of all the SALESMAN
-- who don't report to KING directly.
select *
from emp
where emp.comm > (
        select max(sal)
        from emp
        where emp.job = 'SALESMAN'
    )
    and emp.mgr in (
        select mgr
        from emp
        where emp.empno in (
                select mgr
                from emp
                where emp.ename = 'KING'
            )
    ) -- Display the names of employees from department number 10 with salary greater than that
    -- of all employees working in other departments.
select ename
from emp
where emp.deptno = 10
    and emp.sal > any (
        select sal
        from emp
        where deptno <> 10
    );