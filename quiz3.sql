create table salgrade(
	GRADE INT,
	LOSAL INT,
	HISAL INT
);
-- inserting the data;
insert into salgrade values(1,700,1280);
insert into salgrade values(2,1201,1460);
insert into salgrade values(3,1401,2000);
insert into salgrade values(4,2001,3000);
insert into salgrade values(5,3001,9999);
select * from salgrade;