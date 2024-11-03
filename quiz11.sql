-- 26. List the emps whose Sal is four digit number ending with Zero. 
    select * from emp 
    where emp.sal >= 1000 
    and emp.sal <= 9999
    and emp.sal % 10 = 0;

-- 27. List the emps whose names having a character set ‘ll’ together. 
    select * from emp where emp.ename like '%ll%';
-- 28. List the emps those who joined in 80’s. 
    select * from emp where 
    EXTRACT(year from emp.hiredate)
    between 1980 and 1989;

-- 29. List the emps who does not belong to Deptno 20. 
    select * from emp where emp.deptno <> 20;


-- 30. List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries. 
    select * from emp 
    where 
    emp.job <> 'PRESIDENT' 
    and 
    emp.job <> 'MANAGER'
    order by emp.sal asc;
