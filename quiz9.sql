-- 16. List the emp who are working for the Deptno 10 or 20.
select * from emp where emp.deptno = 10 or emp.deptno = 20; 
-- 17. List the emps who are joined in the year 81. 
select * from emp where extract(year from emp.hiredate) = 1981;
-- 18. List the emps who are joined in the month of Aug 1980. 
    select * from emp where emp.hiredate between '1981-08-01' and '1981-08-31';
-- 19. List the emps Who Annual sal ranging from 22000 and 45000.
    select * from emp where emp.sal * 12 between 22000 and 45000;
-- 20. List the Enames those are having five characters in their Names.
    select * from emp where emp.ename like '_____';
