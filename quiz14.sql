-- Display the Empno, Ename, Sal, Dname, Loc, Deptno, Job 
-- of all emps working at CHICAGO or
-- working for ACCOUNTING dept with Ann Sal>28000, 
-- but the Sal should not be=3000 or 2800 who
-- doesn’t belongs to the Mgr and whose no is having a digit 
-- ‘7’ or ‘8’ in 3rd position in the asc order of
-- Deptno and desc order of job. 
select emp.empno,emp.ename,emp.sal,dept.dname,dept.loc,emp.deptno,emp.job
from emp 
join dept on emp.deptno = dept.deptno
where (dept.Loc = 'CHICAGO' OR dept.Dname = 'ACCOUNTING')
and (emp.sal * 12) > 28000
and emp.sal not in (2800,3000)
and emp.mgr is null
and 
cast(emp.empno as varchar) like '__7%'
or
cast(emp.empno as varchar) like '__9%'
order by emp.deptno asc,emp.job  desc;
select * from dept;





-- 42. Display the total information of the emps along with Grades in the asc order. 
    select emp.*,salgrade.grade from emp
    left join salgrade on emp.sal between salgrade.losal and salgrade.hisal
    order by salgrade.grade asc;
    select * from salgrade;

-- 43. List all the Grade 2 and Grade 3 emps.
    select emp.* from emp 
    join salgrade on
    emp.sal between salgrade.losal and salgrade.hisal
    where salgrade.grade in (2,3);

-- 44. Display all Grade 4,5 Analyst and Mgr. 
    select emp.* from emp 
    join salgrade on
    emp.sal between salgrade.losal and salgrade.hisal
    where salgrade.grade in (4,5)
    and emp.job in ('ANALYST','MANAGER');

-- 45. List the Empno, Ename, Sal, Dname, Grade, Exp, and Ann Sal of emps 
-- working for Dept 10 or 20.
select emp.*,dept.dname,salgrade.grade,
age(current_date,emp.hiredate) as exp,
(emp.sal * 12) as ann_sal from emp
join dept on emp.deptno = dept.deptno
join salgrade on emp.sal between salgrade.losal and salgrade.hisal
where dept.deptno in (10,20);



