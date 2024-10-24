-- THE BELOW WRITTEN FUNCTIONS ARE USED FOR CHARACTER MANIPULATION.
-- 1 DISPLAY THE NAME AND JOB OF EMPLOYEES IN ON SINGLE STRING.
-- the concat function only accepts two parameters.
select concat(emp.ename,"is",emp.job) as name_job from emp;
-- 2 DISPLAY THE FIRST TWO CHARACTERS OF EACH EMPLOYEE'S NAME.
-- the substring or substr accepts three params columnName,start,end.
select substr(emp.ename,1,1) as characters from emp;
-- 3 DISPLAY THE CHARACTER LENGTH OF EACH EMPLOYEE NAME
-- the length function just accept one parameter 
select length(emp.ename) as charCount from emp;
-- 4 DISPLAY THE POSITION OF CHAR (a) IN EMPLOY NAME
select position('a' in emp.ename) from emp;
-- for other databases
-- select instr(emp.ename,'a') from emp;
-- 5 DISPLAY THE NAME OF EMPLOYEES WITH (5) STAR APPENDING ON LEFT SIDE.
-- left padding (lpad(column,lengthString,char))
select lpad(emp.ename,length(emp.ename)+5,'*') as leftPadding from emp;
-- 6 DISPLAY THE NAME OF EMPLOYEES WITH (5) STAR'S APPENDING ON RIGHT SIDE. 
-- right padding (rpad(columnName,lengthString,char))
select rpad(emp.ename,length(emp.ename)+5,'*') as rightPadding from emp;
-- 7 DISPLAY THE NAME'S OF EMPLOYEES BUT FIRST CHAR MUST BE TRIM.
-- trim(char from columnName)
select trim(substr(emp.ename,1,1)  from emp.ename) as firstCharTrim from emp;
-- 8 DISPLAY THE NAME'S OF EMPLOYEES BUT HERE REPLACE FIRST CHAR WITH (A).
-- replace(columnName,char)
select replace(emp.ename,substring(emp.ename,1,1),'A') as firstCharReplace from emp;
