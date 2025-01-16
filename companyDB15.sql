select * from branch;
-- inserting new record in branch table.
insert into branch values(4,'anonymous',NULL,NULL);
-- FIND ALL THE BRANCHES AND THEIR MANAGER'S NAME.
select 
employee.emp_id,
employee.first_name,
employee.last_name,
branch.branch_name
from employee
join branch 
on employee.emp_id = branch.mgr_id;


-- FIND ALL THE BRANCHES AND THEIR MANAGER'S NAME.
-- FIND THE RECORD ON BASE OF LEFT JOIN.
-- here the data will be fetch based on left column.
select 
employee.emp_id,
employee.first_name,
employee.last_name,
branch.branch_name
from employee
left join branch
on emp_id = branch.mgr_id;

-- FIND ALL THE BRANCHES AND THEIR MANAGER'S NAME.
-- FIND THE RECORD BY RIGHT JOIN
-- here the data will be fetch based on right column.
select 
employee.emp_id,
employee.first_name,
employee.last_name,
branch.branch_name
from employee
right join branch
on employee.emp_id = branch.mgr_id;







