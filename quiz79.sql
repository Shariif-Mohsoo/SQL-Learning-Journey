CREATE OR REPLACE 
PROCEDURE select_all()
LANGUAGE plpgsql
AS $$
BEGIN
    CREATE TEMP TABLE
    temp_emp AS
    SELECT * FROM emp;
END;
$$;

CALL select_all();
SELECT * FROM temp_emp;
