-- 6 Display all the details of all ‘Mgrs’
    SELECT * FROM EMP WHERE EMP.EMPNO IN (
        SELECT DISTINCT EMP.MGR FROM EMP
    );
-- 7 List the emps who joined before 1981
    SELECT * FROM EMP WHERE EMP.HIREDATE <'1981-01-01';
-- 8 List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
    SELECT EMP.EMPNO, EMP.ENAME,EMP.SAL,
    (EMP.SAL / 30) AS DAILY_SAL 
    FROM EMP ORDER BY (EMP.SAL * 12) ASC;
-- 9 Display the Empno, Ename, job, Hiredate of all Mgrs
    SELECT EMP.EMPNO,EMP.ENAME,EMP.JOB,EMP.HIREDATE FROM 
    EMP WHERE EMP.MGR IN (
        SELECT DISTINCT EMP.MGR FROM EMP
    );
-- 10 List the Empno, Ename, Sal of all emps working for Mgr 7369. 
SELECT EMP.EMPNO,EMP.ENAME,EMP.SAL FROM EMP WHERE EMP.MGR = 7369;

