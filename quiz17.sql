-- Qno6: 
-- change employee name from Miller to John?
    SELECT * FROM emp where emp.ename = 'MILLER';
    UPDATE emp SET ename = 'JOHN' WHERE ename = 'MILLER';
    SELECT * FROM emp where emp.ename = 'JOHN';
-- Qno7:
-- update hire date of employee KING to current date?
    SELECT * FROM emp WHERE emp.ename = 'KING';
    UPDATE emp SET hiredate = CURRENT_DATE WHERE ename = 'KING';
    SELECT * FROM emp WHERE emp.ename = 'KING';

-- Qno8: 
-- Increase salary of all managers by 3000?
    SELECT * FROM emp WHERE emp.job = 'MANAGER';
    UPDATE emp SET sal = sal + 3000 WHERE emp.job = 'MANAGER';
    SELECT * FROM emp WHERE emp.job = 'MANAGER';

-- Qno9:
-- Update location of department 'SALES' to ARLIGTON from CHICAGO?
    SELECT * FROM dept;
    UPDATE dept SET loc = 'ARLIGTON' WHERE dname = 'SALES';
    SELECT * FROM dept;

-- Qno 10:
-- Increase salary of all employees by 1500  having salary below to 2000?
     UPDATE emp SET sal = sal + 1500 WHERE emp.sal < 2000;
