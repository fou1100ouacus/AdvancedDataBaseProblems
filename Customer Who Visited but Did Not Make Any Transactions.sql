Create table  Visits(visit_id int, customer_id int)
Create table  Transactions(transaction_id int, visit_id int, amount int)
Truncate table Visits
 insert into Visits (visit_id, customer_id) values ('1', '23')
insert into Visits (visit_id, customer_id) values ('2', '9')
insert into Visits (visit_id, customer_id) values ('4', '30')
insert into Visits (visit_id, customer_id) values ('5', '54')
insert into Visits (visit_id, customer_id) values ('6', '96')
insert into Visits (visit_id, customer_id) values ('7', '54')
insert into Visits (visit_id, customer_id) values ('8', '54')
Truncate table Transactions
insert into Transactions (transaction_id, visit_id, amount) values ('2', '5', '310')
insert into Transactions (transaction_id, visit_id, amount) values ('3', '5', '300')
insert into Transactions (transaction_id, visit_id, amount) values ('9', '5', '200')
insert into Transactions (transaction_id, visit_id, amount) values ('12', '1', '910')
insert into Transactions (transaction_id, visit_id, amount) values ('13', '2', '970')
--Visits
--+----------+-------------+
--| visit_id | customer_id |
--+----------+-------------+
--| 1        | 23          |
--| 2        | 9           |
--| 4        | 30          |
--| 5        | 54          |
--| 6        | 96          |
--| 7        | 54          |
--| 8        | 54          |
--+----------+-------------+
--Transactions
--+----------------+----------+--------+
--| transaction_id | visit_id | amount |
--+----------------+----------+--------+
--| 2              | 5        | 310    |
--| 3              | 5        | 300    |
--| 9              | 5        | 200    |
--| 12             | 1        | 910    |
--| 13             | 2        | 970    |
--+----------------+----------+--------+
--Output: 
--+-------------+----------------+
--| customer_id | count_no_trans |
--+-------------+----------------+
--| 54          | 2              |
--| 30          | 1              |
--| 96          | 1              |
--+-------------+----------------+
select * from Transactions
select * from Visits
----select Distinct Customer_id from Visits inner join Transactions ON Visits.visit_id=Transactions.visit_id and 
--select 
--customer_id
--FROM Visits
--LEFT JOIN Transactions
--ON Visits.visit_id = Transactions.visit_id and ;

SELECT customer_id, COUNT(v.visit_id) as count_no_trans 
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY customer_id;
---
SELECT customer_id, COUNT(visit_id) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (
  SELECT visit_id
  FROM Transactions
)
GROUP BY customer_id;