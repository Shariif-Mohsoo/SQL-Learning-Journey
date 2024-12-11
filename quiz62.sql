-- Define Sub Query?
-- A query nested with in another query with parenthesis is called sub query.
-- like 
-- Display detail of all employees who salary is more than SMITH salary.
select *
from emp
where emp.sal > (
        select sal
        from emp
        where emp.ename = 'SMITH'
    );
-- TYPES:
-- There are three types of sub queries.
-- 1. Scalar Subquery
-- 2. Multiple Subquery
-- 3. Correlated Subquery

-- 1.Scalar Subquery
-- It returns only  1 row and 1 column.
-- example:
-- Display the name of all employees who salary is more than the avg salary of all employees.
select e1.ename
from emp e1
where e1.sal > (
        select avg(sal)
        from emp
    );
-- another way of writing this query
select e1.ename
from emp e1
    join (
        select avg(sal) as avgSal
        from emp
    ) avg_sal on e1.sal > avg_sal.avgSal;


-- 2. Multiple row subquery
--a. query that returns multiple rows and multiple columns
-- example:
-- Display the detail of all emp who salary is highest in the department.
select emp.*
from emp
where (emp.sal, emp.deptno) in (
        select max(sal),
            deptno
        from emp
        group by deptno
    );
--b. query that returns 1 cols but multiple rows.
-- example:
-- Display the detail of those departments who are not assign any employee.
select *
from dept
where deptno not in (
        select distinct deptno
        from emp
    );

-- 3. Correlated Subquery
-- Query which is related to the outer query.
-- The processing of the subquery depends on the values return by outer query.
-- example
-- Find the employees in each department who earn more than the average salary in that department
select *
from emp e1
where e1.sal > (
        select round(avg(e2.sal))
        from emp e2
        where e2.deptno = e1.deptno
    );