-- ALTER COMMANDS TO GET LITTLE BIT PRACTICE.

--1 ADD COLUMN
alter table ShoppingBasket_Book
        add basket_holder_name varchar(50);

--2 DROP COLUMN
alter table ShoppingBasket_Book
        drop column basket_holder_name;

--3 MODIFY DATATYPE
-- modify not supported in postgresql.
alter table ShoppingBasket_Book
        modify BookISBN varchar(50);
--FIXME: ALTER TABLE table_name ALTER COLUMN column_name TYPE column_type;
alter table ShoppingBasket_Book
        alter column BookISBN type varchar(50);

--4 RENAME COLUMN
alter table ShoppingBasket_Book
        rename count to Counts;
alter table ShoppingBasket_Book
        rename Counts to count;

--5 ADD CONSTRAINT
    alter table ShoppingBasket_Book
            add constraint shouldNotBeNull check(count is not null);

--6 DROP CONSTRAINT
-- ALTER TABLE TABLE_NAME
-- ALTER COLUMN column_name DROP NOT NULL;
alter table ShoppingBasket_Book
        alter column count drop not null;
alter table ShoppingBasket_Book
        drop constraint shouldNotBeNull;
        
        


select * from ShoppingBasket_Book;
