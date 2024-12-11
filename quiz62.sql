-- Define Nested Query?
-- A query nested with in another query with parenthesis is called nested query.
-- like 
select *
from emp
where emp.sal > (
        select sal
        from emp
        where emp.ename = 'SMITH'
    );
-- TYPES:
There are three types of sub queries.
1. Scalar Subquery
2. Multiple Subquery
3. Correlated Subquery
