-- write a query to display the highest salary department wise and name of emp who is taking that salary.
select ename
from employee
where employee.salary in(
        select max(salary)
        from employee
        group by dept
    );

-- Create a query to display the empno and ename of all employees who earn more than the  average salary. 
-- Sort the results in ascending order of salary
select empno,
    ename
from emp
where emp.sal > (
        select avg(emp.sal)
        from emp
    )
order by emp.sal;