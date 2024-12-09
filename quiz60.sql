-- Write a query that displays the empno and ename of all employees 
-- who work in a  department with any employee whose name contains a U.
select * from emp;

select e2.empno,
    e2.ename
from emp e2
where e2.deptno in (
        select distinct e1.deptno
        from emp e1
        where e1.ename like '%U%'
    );

-- Display the last name and salary of every employee who reports to King.


