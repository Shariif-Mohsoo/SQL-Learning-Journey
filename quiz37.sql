create table Author (
    Name varchar(255),
    Address varchar(255),
    URL varchar(255) not NULL,
    constraint author_pk primary key(Name,Address)
);
-- inserting data
insert into Author (Name,Address,URL)
values ('Rowling', 'UK', 'http://jkrowling.com');

insert into Author (Name,Address,URL)
values ('George', 'USA', 'http://georgerrmartin.com');

select * from author;

