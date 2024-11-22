-- creating the student table.
create table student
(
    std_id float 
    constraint pk_student primary key,
    name varchar(50),
    age float
);
-- describing the table.
-- desc student;
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'student';

-- inserting into student table
insert into student
values(21,'Rayyan Hussain',22);
insert into student
values (22,'M.Mohsin',21);
insert into student
values(23,'Sardar Abdullah',22);

-- checking data
select * from student;

-- alter statements
-- Add a new column email of type VARCHAR(100).
alter table student add email varchar(100) default null;

-- update statement
update student set email = 'sr@gmail.com' where student.std_id = 21;
update student set email = 'mr@gmail.com' where student.std_id = 22;
update student set email = 'hr@gmail.com' where student.std_id = 23;

-- altering statements
-- Rename the column age to student_age.
alter table student rename student_age to std_age;

-- Modify the name column to allow a maximum of 100 characters.
alter table student add constraint check_name_length check(length(name) <= 100);

-- Set the student_age column to NOT NULL.
alter table student modify std_age float not null;
alter table student alter column std_age set not null;


