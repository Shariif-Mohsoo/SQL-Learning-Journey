create table Customers
(
    customer_nr int primary key,
    phone_nr varchar(20),
    name varchar(20),
    address varchar(20)
);
-- insertion
insert into Customers
(customer_nr, phone_nr, name, address)
values (1, '123-456-7890', 'Alice', '123 Main St');

insert into Customers
(customer_nr, phone_nr, name, address)
values (2, '987-654-3210', 'Bob', '456 Elm St');

select * from customers;