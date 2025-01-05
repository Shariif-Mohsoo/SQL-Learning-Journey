--1. Identify employees who have the same manager and list their names.
select 
e1.ename as employee,
e2.ename as manager
from emp e1
join emp e2 on e1.mgr = e2.empno;

--2. Show all employees and departments, ensuring even unmatched records from both sides are included.
select emp.* ,dept.*
from emp
full outer join
dept on emp.deptno = dept.deptno;

--3. Find employees working in the department with the highest total salary expense.
select e.ename, e.deptno, d.dname
from emp e
join dept d on e.deptno = d.deptno
where e.deptno = (
    select deptno
    from emp
    group by deptno
    order by SUM(sal) desc
    limit 1
);


--4. For each employee, display their name, department name, and grade if they fall within a specific salary range.
select e.ename,
    d.dname as department,
    s.grade as salary_grade
from emp e
    join dept d on e.deptno = d.deptno
    join salgrade s on e.sal between s.losal and s.hisal;

--5. Determine which employees do not belong to any department.
select e.ename
from emp e
left join dept d on e.deptno = d.deptno
where d.deptno is null;

