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
