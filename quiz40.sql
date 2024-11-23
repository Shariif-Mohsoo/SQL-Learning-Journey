create table  Customer(
    Email VARCHAR(255) primary key,
    Name VARCHAR(255) not null,
    Phone VARCHAR(255) not null,
    Address VARCHAR(255) not null
);

-- insertion
insert into Customer 
(Email, Name, Phone, Address) 
values('john.doe@example.com', 'John Doe',
 '555-1234', '123 Elm Street');

insert into Customer 
(Email, Name, Phone, Address) 
values('jane.smith@example.com', 'Jane Smith',
 '555-5678', '456 Oak Avenue');

select * from Customer;




