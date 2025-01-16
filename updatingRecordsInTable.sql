-- updating the records

-- will update all the given columns
-- update students set name = 'undefined',major='undefined';

-- updating specific record
update students set name = 'Ali' where stdId = 1 and major = 'Hidden';
update students set major = 'Biology' where stdId = 1 or major = 'Hidden';
update students set major = 'Bio' where major = 'Biology';
SELECT * FROM students
ORDER BY stdId ASC;