select *
from employee;
-- list the employees who sal is equal to avg sal.
select *
from employee
where salary =
select round(avg(salary), 0)
from employee;