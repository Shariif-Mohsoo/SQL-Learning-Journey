-- 16 List the emp who are working for the Deptno 10 or 20.
SELECT * FROM EMP WHERE EMP.DEPTNO IN (10,20);
-- 17 List the emps who are joined in the year 81
SELECT * FROM EMP 
WHERE EMP.HIREDATE >= '1981-01-01'
AND EMP.HIREDATE <= '1981-12-31';
 -- 18 List the emps who are joined in the month of Aug 1980
SELECT * FROM EMP WHERE EXTRACT(MONTH FROM EMP.HIREDATE) = 8;
 -- 19 List the emps Who Annual sal ranging from 22000 and 45000.
SELECT * FROM EMP WHERE (EMP.SAL * 12)    BETWEEN 22000 AND 45000;
-- 20 List the Enames those are having five characters in their Names
SELECT EMP.ENAME FROM EMP WHERE EMP.ENAME LIKE '_____';
