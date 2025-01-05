create  table Manufactures
(
    manufacturer_nr int primary key,
    name varchar(50)
);

-- insertion
insert into Manufactures (manufacturer_nr, name)
values (1, 'TechCorp');

insert into Manufactures (manufacturer_nr, name)
values (2, 'HomeGoods');

select * from manufactures;