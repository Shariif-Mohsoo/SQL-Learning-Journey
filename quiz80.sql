-- implicitly  IN.
CREATE OR REPLACE 
PROCEDURE updateSa
(bonus int, empName varchar(30))
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE emp
    SET sal = sal + bonus
    WHERE ename = empName;
END;
$$;
SELECT * FROM emp;
call updateSal(500,'BLAKE');
SELECT * FROM emp;