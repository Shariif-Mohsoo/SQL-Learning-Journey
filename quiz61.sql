select * from emp;
select * from dept;

-- Display the department number, employee name, and job for every employee 
-- in the Sales  department.
select emp.deptno,
    emp.ename,
    emp.job
from emp
where emp.deptno = (
        select dept.deptno
        from dept
        where dept.dname = 'SALES'
    );

-- Display the employee numbers, names, and salaries of all  employees who earn more 
-- than the average salary and who work in a department with any  employee with a U in their name.
select e3.empno,
    e3.ename,
    e3.sal
from emp e3
where e3.sal > (
        select round(avg(e2.sal), 2)
        from emp e2
    )
    and e3.deptno = (
        select e1.deptno
        from emp e1
        where e1.ename like '%U%'
    );