create table Sales
(
    sales_nr int primary key,
    customer_nr int references
    Customers(customer_nr),
    staff_nr int references
    Vendors(staff_nr),
    shop_nr int references
    Shops(shop_nr),
    date timestamp,
    sum_total float
);
-- insertion
insert into 
Sales (sales_nr,
 customer_nr,
 staff_nr, shop_nr, 
 date,
sum_total)
values (1, 1, 1, 1,
'2024-11-26 10:00:00', 
499.99);
insert into 
Sales (sales_nr, 
customer_nr,
staff_nr, 
shop_nr, 
date, 
sum_total)
values (2, 2, 2, 2, 
'2024-11-26 11:30:00', 
59.98);

select * from Sales;
