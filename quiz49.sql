create table Stock
(
    product_code int 
    references Products(product_code),
    shop_nr int 
    references Shops(shop_nr),
    quantity float,
    type varchar,
    primary key(product_code,shop_nr)
);

-- insertion
insert into Stock (product_code, shop_nr, quantity)
values (101, 1, 50);

insert into Stock (product_code, shop_nr, quantity)
values (102, 2, 200);

select * from stock;
