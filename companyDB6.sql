-- creating the branch supplier table
create table branch_supplier(
	branch_id int,
	supplier_name varchar(40),
	supply_type varchar(40),
	-- composite key
	primary key(branch_id,supplier_name),
	foreign key(branch_id) references branch(branch_id) on delete cascade
);
select * from branch_supplier;