-- 5 queries
-- 21. List the Enames those are starting with ‘S’ and with five characters. 
select * from emp where emp.ename like 'S____';
-- 22. List the emps those are having four chars and third character must be ‘R’.
select * from emp where emp.ename  like '__R_'; 
-- 23. List the Five character names starting with ‘S’ and ending with ‘H’. 
select * from emp where emp.ename like 'S___H';
-- 24. List the emps who joined in January. 
select * from emp where extract(month from emp.hiredate) = 1;
-- 25. List the emps who joined in the month of which second character is ‘a’.
select * from emp where to_char(emp.hiredate,'month') like '_a%';
-- select to_char(emp.hiredate,'month' ) from emp;