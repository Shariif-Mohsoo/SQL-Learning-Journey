-- create the student table and insert data into it.
create table student_table(
	rollNo serial primary key,
	name varchar(30) default 'Undefinied',
	address varchar(30) default 'Undefinied'
);
select * from student_table;
-- inserting the data
insert into student_table(name,address) values('Ali','Faisalabad');
insert into student_table(name,address) values('Ahmed','Lahore');
insert into student_table(name,address) values('Nadeem','Peshawar');