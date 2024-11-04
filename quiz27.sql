-- altering the department table.
alter table dept add primary key(deptno);
-- CREATING TABLE FOR STUDENT
CREATE TABLE student (
    rollNo serial PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    deptno INT,
    FOREIGN KEY (deptno) REFERENCES dept(deptno) ON DELETE SET NULL
);