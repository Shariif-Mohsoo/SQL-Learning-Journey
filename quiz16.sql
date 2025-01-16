-- Qno1:
-- Update job to 'TYPIST' where employee name is FORD?
UPDATE emp SET job = 'TYPIST' WHERE ename = 'FORD';

-- SELECT * from EMP Where emp.ename = 'FORD';

-- Qno2: 
-- update salary of all employee with addition of 1000?
SELECT * from emp;
UPDATE emp SET sal = sal + 1000;
SELECT * from emp;



-- Qno3: 
-- Update 500 commission where job is salesman?
SELECT * FROM emp WHERE job = 'SALESMAN';
UPDATE emp SET comm = 500 WHERE job = 'SALESMAN';
SELECT * FROM emp WHERE job = 'SALESMAN';

-- Qno4: 
-- Increase salary of employees upto 400 that name start from letter B?
SELECT * FROM emp WHERE ename like 'B%';
UPDATE emp SET sal = sal + 400 WHERE ename like 'B%';
SELECT * FROM emp WHERE ename like 'B%';

    
-- Qno 5
-- update salary of employee where emp id is 7900 and increament 1000?
UPDATE emp SET sal = sal + 1000 WHERE empno = 7900;
