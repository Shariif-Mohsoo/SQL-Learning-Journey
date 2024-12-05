-- Write sql query to display the second highest salary  from employee.
select sal as secondMaxSal
from emp
where emp.sal <> (
        select max(sal)
        from emp
    )
order by sal desc
limit 1;

-- Write sql query to display the second highest salary  from employee using function.
select max(sal) as secondMaxSal
from emp
where emp.sal <> (
        select max(sal)
        from emp
    );

-- Write sql query to display the name of second highest salary.
select emp.ename
from emp
where emp.sal <> (
        select max(sal)
        from emp
    )
order by sal desc
limit 1;

-- Write sql query to display the name of employee taking second highest salary using function.
select emp.ename
from emp
where emp.sal = (
        select max(sal) as secondMaxSal
        from emp
        where emp.sal <> (
                select max(sal)
                from emp
            )
    );