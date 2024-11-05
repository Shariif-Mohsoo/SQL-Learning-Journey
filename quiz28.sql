-- selecting everything from department.
select * from dept;
-- inserting the data in student table.
insert into student(name,age,deptno) values('Muneeb',21,40);
-- selecting everything from student.
select * from student;
-- updating from student.
update student set name='Muneeba' where age = 21;
-- deleting from student
delete from student where age = 21;