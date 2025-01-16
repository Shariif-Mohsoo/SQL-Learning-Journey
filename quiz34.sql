select * from department;
select * from employees;

create table department_manager_history(
    manager_id int primary key,
    employee_id int,
    department_id int,
    start_date date default null,
    end_date date default null,
    foreign key(employee_id) 
    references 
    employees(employee_id)
    on delete set null,
    foreign key(department_id)
    references
    department(department_id)
    on delete cascade
);
select * from department_manager_history;


insert into 
department_manager_history
values
(1, 1, 1, '2022-01-01', '2023-05-15'),
(2, 2, 2, '2023-05-16', NULL),
(3, 3, 3, '2021-03-01', '2022-10-30'),
(4, 4, 4, '2022-11-01', NULL);

select * from department_manager_history;
