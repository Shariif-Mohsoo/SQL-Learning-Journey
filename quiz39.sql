create table Book
(
    ISBN VARCHAR(255)
    constraint isbn_pk primary key,
    PublisherName VARCHAR(255),
    AuthorName VARCHAR(255),
    AuthorAddress VARCHAR(255),
    Year date not null,
    Title VARCHAR(255) not null,
    Price   decimal(19,0),
    constraint publisher_fk foreign key(PublisherName)
    references Publisher(Name),
    constraint author_fk foreign key
    (AuthorName,AuthorAddress)
    references Author(Name,Address)
);
-- insertion
insert into Book (ISBN, PublisherName, 
AuthorName, Year, Title, Price) 
values ('9780747532743', 'Bloomsbury', 'Rowling', 
to_date('10-11-1997','dd-mm-yyyy'), 
'Harry Potter and the Philosopher Stone', 19.0);

insert into Book (ISBN, PublisherName, 
AuthorName, Year, Title, Price) 
values ('9780553103540', 'Penguin Random House', 
'George R.R. Martin', to_date('10-11-1997','dd-mm-yyyy'), 
'A Game of Thrones', 29.0);

select * from Book;




