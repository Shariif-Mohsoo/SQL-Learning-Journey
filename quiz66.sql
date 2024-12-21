select *
from employee;
-- list the employees who sal is equal to avg sal.
select *
from employee
where salary = (
        select round(avg(salary), 0)
        from employee
    );
select *
from emp;
-- Display the department name and employee name for those employees who manager is BLAKE.
select dept.dname,
    emp.ename
from dept
    join emp on emp.deptno = emp.deptno
where emp.mgr in (
        select emp.empno
        from emp
        where emp.ename = 'BLAKE'
    );