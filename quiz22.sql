-- 1 List the Emps who are senior to their own MGRS.
select e1.empno, e1.ename, e1.hiredate, e1.mgr
from emp e1
join emp e2 on e1.mgr = e2.empno
where e1.hiredate < e2.hiredate;
-- 2 Find the highest sal of EMP table. 
select max(emp.sal) as highSal from emp;
-- 3 Find details of highest paid employee. 
select * from emp where emp.sal 
=  
(select max(emp.sal) from emp);
-- 4 Find the highest paid employee of sales department.
select e.*
from emp e
join dept d on e.deptno = d.deptno
where d.dname = 'SALES'
  and e.sal = (
                -- getting the highest sal from sales dept.
                select max(e2.sal)
               from emp e2
               join dept d2 on e2.deptno = d2.deptno
               where d2.dname = 'SALES');
-- 5 Display the average salaries of all the clerks. 
select round(avg(emp.sal),2) as salAvg from emp where emp.job = 'CLERK';

