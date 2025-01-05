-- defining the works table 
create table works_with(
	emp_id int,
	client_id int,
	total_sales int,
	-- composite key(primary keys are two thats why)
	primary key(emp_id,client_id),
	foreign key(emp_id) references employee(emp_id) on delete cascade,
	foreign key(client_id) references client(client_id) on delete cascade
);
select * from works_with;