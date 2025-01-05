create table Warehouse
(
    Code INT primary key,
    Phone VARCHAR(255) not null,
    Address VARCHAR(255) not null
);

-- insertion
insert into Warehouse (Code, Phone, Address) 
values (101, '555-7890', '789 Maple Street');

insert into Warehouse (Code, Phone, Address) 
values (102, '555-4321', '321 Pine Road');

select * from Warehouse;