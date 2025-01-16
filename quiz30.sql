select * from student;
insert into student values(23,'HASSAN',22,20),
(24,'IMRAN',23,20),
(25,'ALI',22,20),
(26,'DANISH',23,20);
update student set deptno = 20 where rollno = 24;
delete from student where rollno = 22;
alter table student add column marks real default null;
alter table student drop column marks;
alter table student rename to students;
select * from students;

-- JOIN'S
select * from students;
select * from dept;

select * from students as stds
inner join dept as dpts on stds.deptno = dpts.deptno;

update students set deptno = null
where students.rollno = 25 and 
students.deptno = 20;


select * from students
left join dept on students.deptno = dept.deptno;

select * from students
right join dept on students.deptno = dept.deptno;

select * from students
full outer join dept on students.deptno = dept.deptno;

-- left exclusive join
select * from students
left join dept on students.deptno = dept.deptno
where dept.deptno is null;

-- right exclusive join
select * from students
right join dept on 
students.deptno = dept.deptno
where students.deptno is null;

select * from students;

-- UNION'S
select students.deptno from students
UNION
select dept.deptno from dept;

select students.deptno from students
UNION ALL
select dept.deptno from dept;
