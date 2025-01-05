-- queries to practice join.
select * from emp;
select * from dept;
select * from salgrade;

--1. List all employees along with their department names.
select 
emp.*,dept.dname
from emp 
join dept 
on emp.deptno = dept.deptno;
--2. Show all departments and include any employees working in those departments (if any).
select dept.deptno,emp.* 
from dept 
left join emp on 
dept.deptno = emp.deptno;
--3. Identify departments that currently do not have any employees assigned to them.
select dept.deptno,emp.*
from dept
left join emp on
dept.deptno = emp.deptno
where emp.deptno is null;
--4. Find the total number of employees in each department.
select count(emp.empno),dept.deptno from emp
left join dept on dept.deptno = emp.deptno
group by dept.deptno;
--5. Display all employees, their department names, and their corresponding salary grades.
select emp.*,dept.dname,salgrade.grade
from emp
join dept on emp.deptno = dept.deptno
join salgrade on emp.sal between salgrade.losal and salgrade.hisal;
