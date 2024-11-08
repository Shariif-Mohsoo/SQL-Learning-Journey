-- creating a department table.
create table department(
    department_id int primary key,
    department_name varchar(30) default null,
    current_manager_id int default null
);
-- inserting data init.
insert into department values
(1, 'Sales', 101),
(2, 'HR', 102),
(3, 'Finance', 103),
(4, 'IT', 104);

select * from department;
