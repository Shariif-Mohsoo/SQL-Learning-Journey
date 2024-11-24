create table ShoppingBasket_Book
(
    ShoppingBasket_Id INT,
    BookISBN VARCHAR(255),
    count INT not null,
    primary key(ShoppingBasket_Id,BookISBN),
    constraint book_fk foreign key(BookISBN)
    references Book(ISBN),
    constraint basket_fk foreign key(ShoppingBasket_Id)
    references ShoppingBasket(ID)
);
-- insertion 
insert into ShoppingBasket_Book 
(ShoppingBasket_Id, BookISBN, count) 
values (1, '9780747532743', 2);
insert into ShoppingBasket_Book 
(ShoppingBasket_Id, BookISBN, count) 
values (2, '9780553103540', 1);
select * from shoppingbasket_book;
