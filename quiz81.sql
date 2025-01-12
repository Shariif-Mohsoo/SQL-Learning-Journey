-- VIEW IN SQL
create view muneeba As
select empno,
    ename,
    hiredate,
    job,
    sal,
    deptno
from emp;
-- updaing some sort of data from view muneeba
update muneeba
set ename = 'MUNEEB'
where muneeba.ename = 'Ali';
--   LAB TASKS
-- Qno1. Create simple view with name emp12 where employee having dept no 20?
create view emp12 AS
select *
from emp
where emp.deptno = 20;
-- Qno2. Describe view emp12?
desc emp12;
-- Qno3. Create view where employee salary is less than 4000?
create view emp13 AS
select *
from emp
where emp.sal < 4000;
-- Qno4. Create view with aliases and select employee name and there annual salary?
create view emp14 AS
select ename,
    sal * 12 as annualSal
from emp;
-- Qno5 Create complex view with ename  , job and average salary group by deptno?
create view emp16 AS
select ename,
    job,
    avg(sal) as avgSal
from emp
GROUP BY deptno,
    ename,
    job;
-- Qno6 Create view with name empnew with minimum and maximum salary?
create view empnew AS
select min(sal) as minSal,
    max(sal) as maxSal
from emp;
-- Note/Alert
-- ORA-01732: data manipulation operation not legal on this view
-- Qno7 Create view with name ann_emp with employee annual salary?
create view ann_emp AS
select sal * 12 as annualSal
from emp;
-- Qno8 Create view with name emp_date having employe join before 1981.
create view emp_date AS
select *
from emp
where extract(
        year
        from emp.hiredate
    ) < 1981;
--////////////////////////////////////////////////////// READ ONLY VIEW 
create view emp_date2 AS
select *
from emp
where extract(
        year
        from emp.hiredate
    ) < 1981 with read only;
-- Note/Alert:
-- cannot delete from view without exactly one key-preserved table
-- //////////////////////////////////////REPLACING VIEW
create or replace view emp12 As
select *
from emp
where emp.deptno = 20 with check option constraint check_constraint;
-- The WITH CHECK OPTION clause is used in SQL to enforce data integrity
-- when performing updates
-- or inserts on a view.
-- When applied to a view,
-- it ensures that any data inserted
-- or updated through the view must satisfy the conditions specified in the view ’ s
-- SELECT query.If the data does not meet the view ’ s criteria,
--     the operation will be rejected.