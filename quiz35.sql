
-- NUMBER(10,2),DECIMAL(10,2)
-- Precision (10): The total number of digits that the number can have, 
-- both before and after the decimal point.
-- Scale (2): The number of digits allowed after the decimal point.
create table salary(
    salary_id int primary key,
    employee_id int,
    salary decimal(10,2) default null,
    start_date date default null,
    end_date date default null,
    foreign key(employee_id)
    references employees(employee_id)
    on delete cascade
);

insert into salary
values
(1, 1, 50000.00, '2022-01-01', '2022-12-31'),
(2, 1, 52000.00, '2023-01-01', NULL),
(3, 2, 45000.00, '2021-06-15', '2022-06-14'),
(4, 2, 47000.00, '2022-06-15', NULL),
(5, 3, 60000.00, '2020-03-01', '2021-02-28'),
(6, 3, 62000.00, '2021-03-01', '2022-02-28'),
(7, 4, 70000.00, '2022-05-01', '2023-04-30');

select * from salary;
