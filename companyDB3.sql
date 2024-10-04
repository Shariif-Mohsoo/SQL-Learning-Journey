-- defining the branch id in employee as foreign key.
alter table employee 
add foreign key(branch_id)
references branch(branch_id)
on delete set null;
-- defining the supervisor id as foreign key because it refers to an employee id.
alter table employee
add foreign key(super_id) 
references employee(emp_id)
on delete set null;