-- aggregation: we can use the aggregation in order to organize 
-- the data that we get from using the functions.
-- 1: find out how many males and females there are in employee table.
select * from employee;
select count(sex), sex from employee group by sex;
-- 2: Find the total sales for each salesman from works_with table.
select * from works_with;
select sum(total_sales),emp_id from works_with group by emp_id;
-- 3: Find the total money for each client which he spend from works_with table.
select * from works_with;
select sum(total_sales),client_id from works_with group by client_id;