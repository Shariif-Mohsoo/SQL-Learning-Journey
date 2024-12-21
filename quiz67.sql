-- Display the hiredate of the manager of SMITH.
select hiredata
from emp
where emp.empno in (
        select mgr
        from emp
        where emp.ename = 'SMITH'
    );