-- TODO: What is View In Database?
-- FIXME: Answer:
-- view is noting just 
-- 1) Virtual Table((WHY?) (Reason:It's look like a table but not actual table. Not acquire any space))
-- 2) View is the result set of a stored query.
-- 3) View can be created in two ways:
--      a) Read-only(They should be only read able not modify able.)
--      b) Update able(Changes in the view will also be reflected in the base table)
-- 4) Materialized View(Updated version of view that will acquire the space(it's just the snapshot or copy of base table.).)
-- FIXME: Limitations on view
-- We can't apply any kind of DDL command on view
-- We can apply DML  commands on view (if we created the update able view).
-- TODO: Advantages of view
-- a) To restrict data access (Security Point Of View).
-- b) To make complex queries easy.
-- c) To provide data independence.
-- d) To present different views on the same data(Like privilege levels in the university on set of data).

-- EXAMPLE
-- create the view for the emp name,registration number and salary.
create view empView1 as
select empno,
    ename,
    sal
from emp;

select * from empView1;

-- Drop the view for the emp name,registration number and salary.
