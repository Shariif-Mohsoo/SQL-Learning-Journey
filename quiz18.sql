-- THE BELOW USED FUNCTIONS ARE USED FOR CASE MANIPULATION IN STRING.
-- 1 DISPLAY NAMES OF ALL EMPLOYEES IN UPPER CASE
select upper(emp.ename) from emp;
-- 2 DISPLAY NAMES OF ALL EMPLOYEES IN LOWER CASE
select lower(emp.ename) from emp;
-- 3 DISPLAY THE NAMES OF ALL EMPLOYEES IN CAPITALIZE FORM.
select initcap(emp.ename) from emp;