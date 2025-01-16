create table Vendors
(
    staff_nr int primary key,
    name text
);

-- insertion
insert into Vendors (staff_nr, name)
values (1, 'John');

insert into Vendors (staff_nr, name)
values (2, 'Sarah');

select * from Vendors;
