-- wildcards
-- wildcards are bascially a way of defining patterns that we want to match
-- specific piece of data to.
-- LIKE
-- like is the special keyword in sql, we use with wildcards.
-- In simple terms for the filtering operation we prefer this.
-- here we use % symbol to represent number of characters.
-- here we use _ symbol to represent one character.
-- example:
-- find any client's who name ends with LLC;
-- select * from client;
-- select * from client where client_name like '%LLC';
-- example:
-- find the employees born in octobor.
	select * from employee;
	select * from employee where cast(birth_day as text) like '____-10%';
	-- or
	select * from employee where cast(birth_day as text) like '%10%';
-- another way
-- TO_CHAR(birth_day, 'DD'):
-- This function is converting the birth_day column 
-- (which is likely a DATE type) into a string.
	select * from employee where to_char(birth_day , 'MM') like '10';
	select * from employee where last_name like '%Scott%';