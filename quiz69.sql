-- Display the employees name who earn maximum salary and have no reporting manager.
select emp.ename
from emp
where emp.sal in (
        select max(sal)
        from emp
    )
    and emp.mgr is null;
-- Display the employee details who are reporting to BLAKE and have commission without using null or not null.
select *
from emp
where emp.mgr in (
        select empno
        from emp
        where emp.ename = 'BLAKE'
    )
    and emp.comm > 0;
-- List the department name and loc of all the SALESMAN Manager's-Manager.
select dname,
    loc
from dept
where deptno in (
        select deptno
        from emp
        where emp.mgr in (
                select empno
                from emp
                where emp.mgr in (
                        select empno
                        from emp
                        where emp.ename = 'SALESMAN'
                    )
            )
    );