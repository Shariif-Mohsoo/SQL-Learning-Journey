-- QUESTION: Find store who's sales where better than the average sales across all stores.
-- Table needed
create table sales (
    store_id serial primary key,
    store_name varchar(40),
    product_name varchar(40),
    quantity int,
    price int
);
-- Data insertion
insert into sales
values (1, 'Apple Store 1', 'iPhone 13 Pro', 1, 1000),
    (2, 'Apple Store 2', 'iPhone 14 Pro', 1, 2000),
    (3, 'Apple Store 3', 'iPhone 12 Pro', 1, 500),
    (4, 'Apple Store 4', 'MacBook Pro 14', 3, 6000),
    (5, 'Apple Store 5', 'AirPods Pro', 2, 500);
-- See the data
select *
from sales;
-- SOLUTION:
select store_name,
    sum(price) as totalSales,
    from sales
group by store_name
having sum(sales.price) > (
        select avg(total_sales) as avgSales
        from (
                select store_name,
                    sum(price) as total_sales
                from sales
                group by store_name
            ) x
    );
-- another way
select *
from (
        select store_name,
            sum(price) as total_sales
        from sales
        group by store_name
    ) sales
    join (
        select avg(total_sales) as avgSales
        from (
                select store_name,
                    sum(price) as total_sales
                from sales
                group by store_name
            ) X
    ) avg_sales on sales.total_sales > avg_sales.avgSales;
-- little bit modified version of upper query
with allSales as (
    select store_name,
        sum(price) as total_sales
    from sales
    group by store_name
)
select *
from allSales
    join (
        select avg(total_sales) as avgSales
        from allSales
    ) avg_sales on allSales.total_sales > avg_sales.avgSales;