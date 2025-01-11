-- implicitly  IN.
create procedure updateSal(bonus int IN,empName varchar(30) IN)
language plpgsql
as $$
Begin
    update emp set sal = sal + bonus
    where emp.ename = empName
End;
$$;