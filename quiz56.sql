select *
from emp;

-- Write a SQL Query to display the maximum salary from employee.
select sal as maxSalary
from emp
order by sal desc
limit 1;

-- Write a SQL Query to display the maximum salary from employee using function.
select max(sal) as maxSalary
from emp;

-- Write a SQL Query to display the name of an employee who earn maximum salary.
select emp.ename 
from emp
order by sal desc
limit 1;

-- Write a SQL Query to display the name of an employee who earn maximum salary using function.
select emp.ename
from emp
where emp.sal = (
        select max(sal)
        from emp
    );