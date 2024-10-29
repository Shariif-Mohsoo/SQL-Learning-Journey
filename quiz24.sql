-- 1 CONCAT ENAME AND JOB OF EMPLOYEES AND ALSO FIND THE LENGTH OF EACH EMPLOYEE NAME.
select concat(ename,job) as name_and_job, length(ename) as length from emp;
-- 2 EXTRACT TWO CHARACTERS OF EACH EMPLOYEE NAME.
select substr(ename,1,2) as first_two_chars from emp;
-- 3 SHOW ALL THE EMP JOBS IN LOWERCASE AND NAME IN UPPERCASE.
select lower(job) as job , upper(ename) as name from emp;
-- 4 DISPLAY ALL THE EMPLOYEES DATA AND MAKE THE NAME OF EACH EMPLOYEE SHOULD BE CAPITALIZE.
select empno,initcap(ename) as Ename, job,sal,comm,deptno from emp;
-- 5 ADD 5 MONTHS IN HIRE DATE OF EACH EMPLOYEE.
select add_months(hiredate,5) as add5Months from emp;
-- 6 LIST ALL THE EMPLOYEE INFO WHOSE NAME START WITH S.
select * from emp where emp.ename like 'S%';
