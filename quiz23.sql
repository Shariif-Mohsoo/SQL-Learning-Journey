-- List the employee in dept 20 whose sal is >the average sal 0f dept 10 emps. 
SELECT * FROM emp 
WHERE emp.deptno = 20 
AND
emp.sal > 
(
    SELECT ROUND(AVG(emp.sal),2) FROM emp
    WHERE emp.deptno = 10
);
-- 2 Display the Grade, Number of emps, and max sal of each grade. 
SELECT sg.grade, COUNT(e.empno) AS number_of_emps, MAX(e.sal) AS max_salary
FROM salgrade sg
JOIN emp e ON e.sal BETWEEN sg.losal AND sg.hisal
GROUP BY sg.grade;
--3 List the managers whose sal is more than his employess avg salary.
SELECT mgr.empno, mgr.ename, mgr.sal AS manager_salary
FROM emp mgr
WHERE mgr.empno IN (
    SELECT e.mgr
    FROM emp e
    WHERE e.mgr IS NOT NULL
)
AND mgr.sal > (
    SELECT ROUND(AVG(e.sal),2)
    FROM emp e
    WHERE e.mgr = mgr.empno
);
