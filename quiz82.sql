create table students (
    id int primary key,
    name varchar(20),
    class int default null,
    marks float default 0.00
);
-- inserting some sort of data in the students table.
insert into students
VALUES(1, 'M.Mohsin', 2, 22.22);
insert into students
VALUES(2, 'M.Danish', 2, 22.22);
insert into students
VALUES(3, 'M.Muneeb', 2, 22.22);
-- selecting everything from the table
select *
from students;
-- updating some sore of data
update students
set marks = 23.22
where id = 1;
select *
from students
where id = 1;
-- altering the table now 
alter table students drop column age;
-- adding new column
alter table students
add column dob float default null;
select *
from students;
delete from students
where id = 2;
alter table students drop column dob;
-- selecting from students;
select *
from students;