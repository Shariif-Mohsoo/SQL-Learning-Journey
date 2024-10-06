-- create the result table for each previous student.
create table result_table(
	rollNo int,
	subject varchar(30) default 'Undefinied',
	marks float,
	-- creating the composite key
	primary key(rollNo,subject),
	foreign key(rollNo) references student_table(rollno) on delete  cascade
);
select * from result_table;
-- inserting the data
insert into result_table values(1,'English',52);
insert into result_table values(1,'Math',77);
insert into result_table values(1,'Computer',64);
insert into result_table values(2,'English',90);
insert into result_table values(2,'Math',98);
insert into result_table values(2,'Computer',99);
insert into result_table values(3,'English',98);
insert into result_table values(3,'Math',90);
insert into result_table values(3,'Computer',40);

-- deleting the student with roll number 2
delete from student_table where rollno = 2;

insert into student_table values(2,'Ahmed','Pindi');
select * from student_table;