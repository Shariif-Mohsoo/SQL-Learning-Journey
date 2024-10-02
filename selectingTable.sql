-- /TODO: HERE WE WILL SEE HOW TO SELECT TABLE FROM DATABASE.
-- TODO: SYNTAX:
-- FIXME: SELECT COLUMN_ID FROM tableNAME
select * from students;
-- TODO: select everything from students table.
-- FIXME: SELECT COLUMN_ID  AS ALIAS FROM tableNAME
select studentid as stdId from students;
-- TODO: concatination or pipelining
select name || ' ' || major as nameMajor from students;
-- expression
select studentId + 2 as myChoice from students;