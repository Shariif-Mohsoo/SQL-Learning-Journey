-- UNION
-- HERE WE WILL SEE ABOUT UNIONS
-- UNION IS JUST CONCATINATION OF COLUMNS.
/*
-- RULES:
-- DATA TYPES OF ALL THE COLUMNS SHOULD BE THE SAME.
-- THERE WILL THE SAME NUMBER OF COLUMNS IN EACH 
-- SELECT STATEMENT.
*/
-- select first_name and the branch_name as the single list.
select first_name as first_and_branch_names from employee 
union 
select branch_name from branch
-- Find the list of all clients and branch supplier name.
select * from client;
select * from branch_supplier;
select client_name as  client_and_branchSupplier_names from client
union 
select supplier_name from branch_supplier;
-- Find a list of all money spent and earned by the company.
select * from employee;
select * from works_with;
select salary as salaries_and_sales from employee
union
select total_sales from works_with;