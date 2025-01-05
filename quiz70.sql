-- List the employee's department name and location of all the employees who are CLERK, 
-- reporting to the BLAKE and salary is lesser than MARTIN salary.
select dname,
    loc
from dept
    join emp on emp.deptno = dept.deptno
where emp.mgr in (
        select empno
        from emp
        where emp.ename = 'BLAKE'
    )
    and emp.sal > any (
        select sal
        from emp
        where emp.ename = 'MARTIN'
    )
    and emp.job = 'CLERK';
-- Display all the department names for WARD manager's manager.
select dname
from dept
where dept.deptno in (
        select deptno
        from emp
        where emp.mgr in (
                select empno
                from emp
                where emp.mgr in (
                        select empno
                        from emp
                        where emp.ename = 'WARD'
                    )
            )
    );
-- Display the department name who earn minimum salary and have reporting manager.
select dname
from dept
where deptno = (
        select deptno
        from emp
        where emp.sal in (
                select min(sal)
                from emp
            )
            and emp.mgr is not null
    );