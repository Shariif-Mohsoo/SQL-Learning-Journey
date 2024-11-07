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