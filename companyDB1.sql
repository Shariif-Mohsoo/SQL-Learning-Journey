-- creating the employee table.
create table employee(
	emp_id int primary key,
	first_name varchar(40),
	last_name varchar(40),
	birth_day date,
	sex varchar(1),
	salary int,
	-- supervisor id
	super_id int,
	-- branch 
	branch_id int
);
select * from employee;













