-- CREATING THE TABLE
/*
	syntax:
	create table tableName (
		columnNameA dataType,
		columnNameB dataType,
		//to specify the columns or columns as primary or whatever you want.
		primary key(columnName)
	);
*/
create table students (
	studentId int primary key,
	-- 30 means the length of name should be 30 not more.
	name varchar(30),
	-- length of major subject name should be 30 not more.
	major varchar(30)
);
