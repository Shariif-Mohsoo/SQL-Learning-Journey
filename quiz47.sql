create table Products
(
    product_code int primary key,
    manufacturer_nr int,
    price float,
    type varchar(40),
    foreign key(manufacturer_nr)
    references Manufactures(manufacturer_nr)
);
-- insertion
insert into Products 
(product_code, manufacturer_nr, price, type)
values (101, 1, 499.99, 'Electronics');

insert into Products 
(product_code, manufacturer_nr, price, type)
values (102, 2, 29.99, 'Kitchenware');

select * from products;
