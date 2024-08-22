Create table  Sales (sale_id int, product_id int, year int, quantity int, price int)
Create table  Product (product_id int, product_name varchar(10))
Truncate table Sales
insert into Sales (sale_id, product_id, year, quantity, price) values ('1', '100', '2008', '10', '5000')
insert into Sales (sale_id, product_id, year, quantity, price) values ('2', '100', '2009', '12', '5000')
insert into Sales (sale_id, product_id, year, quantity, price) values ('7', '200', '2011', '15', '9000')
Truncate table Product
insert into Product (product_id, product_name) values ('100', 'Nokia')
insert into Product (product_id, product_name) values ('200', 'Apple')
insert into Product (product_id, product_name) values ('300', 'Samsung')

select * from Sales 
select * from Product 
-----------

SELECT product_name
FROM Product
FULL OUTER JOIN Sales
ON Product.product_id = Sales.product_id

----
SELECT year ,price
FROM Sales
LEFT JOIN Product
ON Sales.product_id = Product.product_id;
---

select Product_name ,year,price from Product inner join Sales on Product.product_id=Sales.product_id;
