-- SUB QUERY IN  INSERT,UPDATE AND DELETE CLAUSE.

-- INSERT CLAUSE
-- INSERT DATA TO EMPLOYEE TABLE. MAKE MURE NOT INSERT DUPLICATE RECORD.
select *
from employee;

insert into employee
select e.empno,
    e.ename,
    d.dname,
    e.sal
from emp e
    join dept d on e.deptno = d.deptno
where not exists (
        select 1
        from employee eh
        where eh.eid = e.empno
    );


-- UPDATE CLAUSE.
-- Give 10 % increment to all employees who earn more than the avg salary in each department
update employee
set salary = (salary + salary * 0.10)
where salary in (
        select max(salary)
        from employee
        group by dept
    );

-- DELETE CLAUSE
-- Delete all the departments who don't have any employee.
select * from dept;

delete from dept
where deptno in (
        select deptno
        from dept
        where deptno not in (
                select deptno
                from emp
            )
    );