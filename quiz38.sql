create table Publisher
(
    Name VARCHAR(255) 
    constraint Publisher_PK primary key,
    Address VARCHAR(255) not null,
    Phone VARCHAR(255) not null,
    URL VARCHAR(255) not null
);

-- insertion
insert into Publisher (Name,Address, Phone, URL) 
values ('Bloomsbury','UK','123-456-7890',
 'http://bloomsbury.com');

insert into Publisher (Name,Address, Phone, URL) 
values ('Penguin Random House','US','987-654-3210', 
'http://penguinrandomhouse.com');

select * from publisher;