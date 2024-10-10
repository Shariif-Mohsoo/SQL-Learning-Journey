-- . List the Enames those are starting with ‘S’ and with five characters
select * from emp where emp.ename like 'S____';
-- . List the emps those are having four chars and third character must be ‘R’
select * from emp where emp.ename like '__R_';
-- . List the Five character names starting with ‘S’ and ending with ‘H’
select * from emp where emp.ename like 'S___H';
-- List the emps who joined in January.
select * 
from emp
where extract(month from hiredate) = 1;
-- . List the emps who joined in the month of which second character is ‘a’. 
select * 
from emp
where to_char(hiredate, 'month') like '_a%';

