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