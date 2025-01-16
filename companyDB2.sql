-- creating the branch table.
create table branch(
-- branch id
	branch_id int primary key,
	branch_name varchar(40),
-- manager id
	mgr_id int,
-- manager starting date
	mgr_start_date date,
-- defining the foreign key manager because manager is also an employee and select for this post.
	foreign key(mgr_id) references employee(emp_id) on delete set null
);
select * from branch;