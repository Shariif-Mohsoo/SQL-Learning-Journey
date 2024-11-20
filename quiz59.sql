-- write a query to display the highest salary department wise and name of emp who is taking that salary.
select max(salary)
from employee
group by dept;
