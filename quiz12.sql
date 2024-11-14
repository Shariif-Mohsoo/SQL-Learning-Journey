-- 31. List all the emps who joined before or after 1982. 
    select * from emp where 
    EXTRACT(year from hiredate) <= 1982
    or 
    EXTRACT(year from hiredate) > 1982;

-- 32. List the emps whose Empno not starting with digit 78.
    select * from emp where cast(emp.empno as varchar) not like '78%';
-- 33. List the emps who are working under ‘MGR’. 
    select * from emp where emp.mgr is not null;
-- 34. List the emps who joined in any year but not belongs to the month of March.
    select * from emp where to_char(emp.hiredate,'month') <> 'March';
-- 35. List all the Clerks of Deptno 20. 
    select * from emp where emp.job = 'CLERK' and emp.deptno = 20;
