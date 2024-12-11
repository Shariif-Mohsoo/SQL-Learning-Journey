-- Define Sub Query?
-- A query nested with in another query with parenthesis is called sub query.
-- like 
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
select emp.*
from emp
where (emp.sal, emp.deptno) in (
        select max(sal),
            deptno
        from emp
        group by deptno
    );
--b. query that returns 1 cols but multiple rows.
select *
from dept
where deptno not in (
        select distinct deptno
        from emp
    );
