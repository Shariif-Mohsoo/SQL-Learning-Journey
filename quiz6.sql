-- -- 5 queries

-- 1. Display all the information of the EMP table? 
select * from emp;
-- 2. Display unique Jobs from EMP table? 
select distinct job from emp;
-- 3. List the emps in the asc order of their Salaries?
select * from emp order by sal asc; 
-- 4. List the details of the emps in asc order of the Dptnos and desc of Jobs? 
select * from emp order by deptno asc, job desc;
-- 5. Display all the unique job groups in the descending order?
select distinct job,count(job) from emp group by job order by job desc;



