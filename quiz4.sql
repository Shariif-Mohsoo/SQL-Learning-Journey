create table dept(
	DEPTNO INT,
	DNAME VARCHAR(35),
	LOC VARCHAR(35)
);
-- inserting data
insert into dept values(10,'ACCOUNTING','NEW YORK');
insert into dept values(20,'RESEARCH','DALLAS');
insert into dept values(40,'OPERATIONS','BOSTON');
insert into dept values(45,'SALES','ARLIGTION');

select * from dept;