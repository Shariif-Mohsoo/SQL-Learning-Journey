-- List all the information of emp with Loc and the Grade of all the emps 
-- belong to the Grade range from 2 to 4 working at the Dept those are not 
-- starting with char set ‘OP’ and not ending with ‘S’ with the designation
-- having a char ‘a’ any where joined in the year 1981 but not in the month
-- of Mar or Sep and Sal not end with ‘00’ in the asc order of Grades 
select emp.*,dept.loc,salgrade.grade from emp
join salgrade on emp.sal between salgrade.losal
and salgrade.hisal
join dept on emp.deptno = dept.deptno
where salgrade.grade between 2 and 4
and dept.dname not like 'OP%'
and dept.dname not like '%S'
and emp.job like '%a%'
and extract(year from emp.hiredate) = 1981
and extract(month from emp.hiredate) not in(3,9)
and cast(emp.sal as varchar) not like ('%00')
order by salgrade.grade asc;



-- 47. List the details of the Depts along with Empno, Ename or without the emps 
    select dept.*,emp.empno,emp.ename from dept
    left join emp on dept.deptno = emp.deptno;
    
-- 48. List the details of the emps whose Salaries more than the employee BLAKE. 
    select * from emp where emp.sal > (
        select sal from emp where emp.ename = 'BLAKE'
    );

-- 49. List the emps whose Jobs are same as ALLEN. 
select * from emp where emp.job = (
    select job from emp where emp.ename = 'ALLEN'
);

-- 50. List the emps who are senior to King.
select * from emp where emp.hiredate < (
    select hiredate from emp where emp.ename = 'KING'
) ;

