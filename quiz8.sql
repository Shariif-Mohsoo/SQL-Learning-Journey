--  5 queries
-- 11. Display all the details of the emps whose Comm. Is more than their Sal. 
    select * from emp where emp.comm > emp.sal;
-- 12. List the emps in the asc order of Designations of those joined after the second half of 1981. 
    select * from emp 
    where emp.hiredate >= '1981-06-01'
    order by job asc ;

-- 13. List the emps along with their Exp and Daily Sal is more than Rs.100. 
    select emp.empno,emp.ename,emp.sal,
    age(current_date,emp.hiredate) as exp
    from emp where (emp.sal / 30) >= 100;

-- 14. List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order. 
    select * from emp where emp.job = 'CLERK' or emp.job = 'ANALYST';
-- 15. List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority. 
    select * from emp where emp.hiredate in 
    ('1-MAY-81','3-DEC-81','17-DEC-81','19-JAN-80') 
    order by age(current_date,emp.hiredate) asc;
    