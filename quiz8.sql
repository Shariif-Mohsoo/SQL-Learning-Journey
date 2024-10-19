-- 11 Display all the details of the emps whose Comm. Is more than their Sal
SELECT * FROM EMP WHERE EMP.COMM > EMP.SAL;
-- 12 List the emps in the asc order of Designations of those joined 
-- after the second half of 1981(July 1, 1981)
SELECT * FROM EMP WHERE EMP.HIREDATE > '1981-07-01' ORDER BY EMP.JOB;
-- 13 List the emps Daily Sal is more than Rs.100.
SELECT * FROM EMP WHERE (EMP.SAL/ 30) > 100;
-- 14 List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order.
SELECT * FROM EMP WHERE EMP.JOB IN ('CLERK','ANALYST') ORDER BY EMP.JOB DESC;

-- 15 List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of
-- seniority. 
SELECT * FROM EMP WHERE EMP.HIREDATE IN (
    '1-MAY-81',
    '3-DEC-81',
    '17-DEC-81',
    '19-JAN-80'
)
ORDER BY EMP.HIREDATE ASC;