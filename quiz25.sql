-- 7 COUNT ALL EMPLOYEES.
select count(emp.ename)  from emp;
-- 8 FIND THE SUM AND AVG SALARIES OF ALL EMPLOYEES.
select sum(emp.sal) as sumOfSal,round(avg(emp.sal),2) as avgOfSal
from emp;
-- 9 FIND THE MIN AND MAX SALARIES OF ALL EMPLOYEES.
select min(emp.sal) as miniSal, max(emp.sal) as maxiSal from emp;
-- 10 FIND THE MONTHS BETWEEN CURRENT DATE AND HIRE DATE OF EACH EMPLOYEE.
select months_between(current_date,emp.hiredate) as diffBetween from emp;
-- 11 FIND THE NO. OF MONTHS BETWEEN JONES AND MARTIN HIRE DATE.
select months_between(current_date,emp.hiredate) from emp where emp.ename in ('JONES', 'MARTIN');

