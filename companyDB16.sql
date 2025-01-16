-- NESTED QUERIES.
/*
	Q.1:
	    Find names of all employees who have sold over 30,000 to a single
		client.
*/
select 
employee.first_name,
employee.last_name
from employee 
where employee.emp_id
in 
(
select works_with.emp_id 
from works_with where works_with.total_sales > 30000
);

/*
	Q.2:
		FIND ALL CLIENTS WHO ARE HANDLED BY THE BRANCH THAT Michael Scott
		MANAGES. ASSUME YOU KNOW MICHAEL SCOTT ID.
*/
-- lets grab Michael Scott id;
select employee.emp_id 
from employee
where employee.first_name = 'Michael' and employee.last_name = 'Scott';
-- 102 is the id of this person.
select * from client;
-- client_id client_name branch_id
select client.client_name 
from client
where client.branch_id =
(
select branch.branch_id 
from branch 
where branch.mgr_id = 102
limit 1
);