create table Sales_details
(
    product_code int references
    Products(product_code),
    sales_nr int references
    Sales(sales_nr),
    quantity smallint,
    primary key(product_code, sales_nr)
);

-- insertion
insert into Sales_details 
(product_code, sales_nr, quantity)
values (101, 1, 1);

insert into Sales_details 
(product_code, sales_nr, quantity)
values (102, 2, 2);

select * from Sales_details;