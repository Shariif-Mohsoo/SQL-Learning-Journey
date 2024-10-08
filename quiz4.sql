create table dept(
	DEPTNO INT,
	DNAME VARCHAR(35),
	LOC VARCHAR(35)
);
-- inserting data
insert into dept values(10,'ACCOUNTING','NEW YORK');
insert into dept values(20,'RESEARCH','DALLAS');
insert into dept values(30,'SALES','ARLIGTION');
insert into dept values(40,'OPERATIONS','BOSTON');

select * from dept;