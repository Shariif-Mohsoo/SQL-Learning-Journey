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

-- Display the employee numbers, last names, and salaries of all  employees who earn more 
-- than the average salary and who work in a department with any  employee with a u in their name.
