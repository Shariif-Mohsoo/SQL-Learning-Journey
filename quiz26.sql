-- JOINS IN SQL

-- INNER JOIN
select e.ename,d.deptno from emp as e inner join dept as d on e.deptno = d.deptno;
-- LEFT JOIN
select e.ename,d.deptno,e.job from emp as e left join dept as d on e.deptno = d.deptno;
-- RIGHT JOIN
select e.ename,d.deptno,d.dname,e.job from emp as e right join dept as d on e.deptno = d.deptno;
-- FULL JOIN / OUTER JOIN
select e.ename,d.deptno,d.dname,e.job from emp as e full outer join  dept as d on e.deptno = d.deptno;
-- UNION
select emp.ename from emp
union
select dept.dname from dept



