create table Warehouse_book
(
    WarehouseCode INT,
    BookISBN VARCHAR(255),
    Count INT NOT NULL,
    primary key(WarehouseCode,BookISBN),
    foreign key(WarehouseCode)
    references Warehouse(Code),
    foreign key(BookISBN)
    references Book(ISBN)
);
-- insertion
insert into Warehouse_Book (WarehouseCode, BookISBN, Count) 
values(101, '9780747532743', 50);

insert into Warehouse_Book (WarehouseCode, BookISBN, Count) 
values(102, '9780553103540', 30);

select * from warehouse_book;
