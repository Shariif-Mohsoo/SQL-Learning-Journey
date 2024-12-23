create table emp(
	EMPNO INT,
	ENAME VARCHAR(30),
	JOB VARCHAR(30),
	MGR INT,
	HIREDATA DATE,
	SAL INT,
	COMM INT DEFAULT NULL,
	DEPTNO INT
);
select *
from emp;
-- inserting the data
INSERT INTO emp
values (
		7369,
		'SMITH',
		'CLERK',
		7902,
		'17-DEC-80',
		3000,
		500,
		20
	);
-- Inserting more data into emp table
INSERT INTO emp
VALUES (
		7499,
		'ALLEN',
		'SALESMAN',
		7698,
		'20-FEB-81',
		1600,
		300,
		30
	);
INSERT INTO emp
VALUES (
		7500,
		'ALLEN',
		'SALESMAN',
		7698,
		'20-FEB-85',
		1700,
		500,
		30
	);
INSERT INTO emp
VALUES (
		7521,
		'WARD',
		'SALESMAN',
		7698,
		'22-FEB-81',
		1250,
		500,
		30
	);
INSERT INTO emp
VALUES (
		7566,
		'JONES',
		'MANAGER',
		7839,
		'02-APR-81',
		2975,
		NULL,
		20
	);
INSERT INTO emp
VALUES (
		7654,
		'MARTIN',
		'SALESMAN',
		7698,
		'28-SEP-81',
		1250,
		1400,
		30
	);
INSERT INTO emp
VALUES (
		7698,
		'BLAKE',
		'MANAGER',
		7839,
		'01-MAY-81',
		2850,
		NULL,
		30
	);
INSERT INTO emp
VALUES (
		7782,
		'CLARK',
		'MANAGER',
		7839,
		'09-JUN-81',
		2450,
		NULL,
		10
	);
INSERT INTO emp
VALUES (
		7788,
		'SCOTT',
		'ANALYST',
		7566,
		'09-DEC-82',
		3000,
		NULL,
		20
	);
INSERT INTO emp
VALUES (
		7839,
		'KING',
		'PRESIDENT',
		NULL,
		'17-NOV-81',
		5000,
		NULL,
		10
	);
INSERT INTO emp
VALUES (
		7844,
		'TURNER',
		'SALESMAN',
		7698,
		'08-SEP-81',
		1500,
		0,
		30
	);
INSERT INTO emp
VALUES (
		7876,
		'ADAMS',
		'CLERK',
		7788,
		'12-JAN-83',
		1100,
		NULL,
		20
	);
INSERT INTO emp
VALUES (
		7900,
		'JAMES',
		'CLERK',
		7698,
		'03-DEC-81',
		950,
		NULL,
		30
	);
INSERT INTO emp
VALUES (
		7934,
		'MILLER',
		'CLERK',
		7782,
		'23-JAN-82',
		1300,
		NULL,
		10
	);
INSERT INTO emp
VALUES(
		7935,
		'ADMAS',
		'ADMINISTRATOR',
		7794,
		'23-JAN-24',
		1600,
		NULL,
		10
	);