create table shoppingBasket
(
    ID INT PRIMARY KEY,
    CustomerEmail VARCHAR(255),
    constraint customer_fk 
    foreign key(CustomerEmail)
    references Customer(Email)
);
-- insertion
insert into ShoppingBasket (ID, CustomerEmail) 
values (1, 'john.doe@example.com');

insert into ShoppingBasket (ID, CustomerEmail) 
values (2, 'jane.smith@example.com');

select * from shoppingbasket;
