-- 21. List the Enames those are starting with ‘S’ and with five characters
    SELECT * FROM emp WHERE ename LIKE 'S____';
-- 22. List the emps those are having four chars and third character must be ‘R’
    SELECT * FROM emp WHERE ename LIKE '__R_';
-- 23. List the Five character names starting with ‘S’ and ending with ‘H’
    SELECT * FROM emp WHERE ename LIKE 'S___H';
--24. List the emps who joined in January.
    SELECT * FROM emp WHERE EXTRACT(MONTH FROM emp.hiredate) = 1;
-- 25. List the emps who joined in the month of which second character is ‘a’. 
    SELECT * FROM emp WHERE to_char(hiredate,'month') LIKE '_a%';
