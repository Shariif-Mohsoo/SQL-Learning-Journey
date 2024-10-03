-- creating the table with constraints
-- INVALID CODE
-- create table students(
-- 	-- 
-- 	stdId SERIAL int,
-- 	-- name column should not be null and by default undefinied
-- 	name varchar(30) not null and default 'undefined',
-- 	-- name column should not be null and by default undefinied
-- 	major varchar(30) not null and default 'undefined',
-- 	primary key(stdId)
-- );

CREATE TABLE students (
    -- stdId is auto-incrementing primary key
    -- here because of SERIAL datatype will automatically assigned.
    stdId SERIAL,
    
    -- name column should not be null, defaulting to 'undefined'
    name VARCHAR(30) NOT NULL DEFAULT 'undefined',
    
    -- major column should not be null, defaulting to 'undefined'
    major VARCHAR(30) NOT NULL DEFAULT 'undefined',

	primary key(stdId)
);

select * from students;






