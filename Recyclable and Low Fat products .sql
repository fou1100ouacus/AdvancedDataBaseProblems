--Table: Customer
--+-------------+---------+
--| Column Name | Type    |
--+-------------+---------+
--| id          | int     |
--| name        | varchar |
--| referee_id  | int     |D
--+-------------+---------+
--In SQL, id is the primary key column for this table.
--Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.t.

Create table Customer
(id int, name varchar(25), referee_id int)
Truncate table Customer
insert into Customer (id, name, referee_id) values ('1', 'Will', null)
insert into Customer (id, name, referee_id) values ('2', 'Jane', null)
insert into Customer (id, name, referee_id) values ('3', 'Alex', '2')
insert into Customer (id, name, referee_id) values ('4', 'Bill', null)
insert into Customer (id, name, referee_id) values ('5', 'Zack', '1')
insert into Customer (id, name, referee_id) values ('6', 'Mark', '2')
---------
select * from Customer
---
select name from Customer Where referee_id !=  2 or referee_id  IS NULL;
select name from customer where referee_id is null or referee_id not in(2);
