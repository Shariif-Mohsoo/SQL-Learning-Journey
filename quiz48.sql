create table Shops
(
    shop_nr int primary key,
    address varchar(50),
    name varchar(50)
);

-- insertion
insert into Shops (shop_nr, address, name)
values (1, '789 Broadway', 'TechStore');

insert into Shops (shop_nr, address, name)
values (2, '321 Maple St', 'HomeMart');

select * from shops;