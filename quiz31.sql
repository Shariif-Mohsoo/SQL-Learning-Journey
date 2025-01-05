-- IN THE STUDENT TABLE
-- 1. CHANGE THE NAME OF COLUMN 'name' to 'full_name'.
    alter table students rename name to full_name;
-- 2. DELETE ALL THE STUDENT WHO SCORED LESS THAN 80.
    delete from students where students.marks < 80;
-- 3. DELETE THE COLUMN FOR GRADE
    alter table students drop column grade;

select * from students;