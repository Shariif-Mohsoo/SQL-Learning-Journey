--TODO: Subquery using Select clause.
-- FETCH ALL THE EMPLOYEE DETAILS AND ADD THE REMARK COLUMN TO THOSE EMPLOYEE WHO EARN MORE THAN THE AVG SALARY OF ALL EMPLOYEES.
select *,
    (
        case
            when emp.sal > (
                select avg(emp.sal)
                from emp
            ) then 'Higher than average salary'
            else null
        end
    ) as remarks
from emp;
-- FIXME: another way
select *,
    (
        case
            when emp.sal > avg_sal.salary then 'Higher salary than avg salary'
            else null
        end
    ) as remarks
from emp
    cross join (
        select avg(sal) as salary
        from emp
    ) as avg_sal;


--TODO: Subquery using Having clause
-- FIND THE STORES WHO HAVE SOLD MORE UNITS THAN THE AVG UNITS SOLD BY ALL STORES.
select store_name,
    sum(quantity)
from sales_1
group by store_name
having sum(quantity) > (
        select avg(quantity)
        from sales_1
    );


