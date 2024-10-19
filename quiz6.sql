-- -- 5 queries
-- -- 1 select all the data from emp table.
SELECT * FROM EMP;
-- -- 2 select unique jobs from emp table.
SELECT DISTINCT EMP.JOB FROM EMP;
-- -- 3 list the employees in assending order of their salaries.
SELECT * FROM EMP ORDER BY EMP.SAL  ASC;
-- -- 4 list the detail of employees in asc order of deptno and desc order of jobs.
SELECT * FROM EMP ORDER BY EMP.DEPTNO ASC, EMP.JOB DESC;
-- -- 5 display all the unique job groups in desc order.
SELECT DISTINCT EMP.JOB FROM EMP ORDER BY EMP.JOB DESC;