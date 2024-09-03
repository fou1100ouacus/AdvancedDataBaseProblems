Create table  Signups (user_id int, time_stamp datetime)
Create  TABLE Confirmations (
    user_id int,
    time_stamp datetime,
    action VARCHAR(10) CHECK (action IN ('confirmed', 'timeout'))
);

Truncate table Signups
insert into Signups (user_id, time_stamp) values ('3', '2020-03-21 10:16:13')
insert into Signups (user_id, time_stamp) values ('7', '2020-01-04 13:57:59')
insert into Signups (user_id, time_stamp) values ('2', '2020-07-29 23:09:44')
insert into Signups (user_id, time_stamp) values ('6', '2020-12-09 10:39:37')
Truncate table Confirmations
insert into Confirmations (user_id, time_stamp, action) values ('3', '2021-01-06 03:30:46', 'timeout')
insert into Confirmations (user_id, time_stamp, action) values ('3', '2021-07-14 14:00:00', 'timeout')
insert into Confirmations (user_id, time_stamp, action) values ('7', '2021-06-12 11:57:29', 'confirmed')
insert into Confirmations (user_id, time_stamp, action) values ('7', '2021-06-13 12:58:28', 'confirmed')
insert into Confirmations (user_id, time_stamp, action) values ('7', '2021-06-14 13:59:27', 'confirmed')
insert into Confirmations (user_id, time_stamp, action) values ('2', '2021-01-22 00:00:00', 'confirmed')
insert into Confirmations (user_id, time_stamp, action) values ('2', '2021-02-28 23:59:59', 'timeout')
--Input: 
--Signups table:
--+---------+---------------------+
--| user_id | time_stamp          |
--+---------+---------------------+
--| 3       | 2020-03-21 10:16:13 |
--| 7       | 2020-01-04 13:57:59 |
--| 2       | 2020-07-29 23:09:44 |
--| 6       | 2020-12-09 10:39:37 |
--+---------+---------------------+
--Confirmations table:
--+---------+---------------------+-----------+
--| user_id | time_stamp          | action    |
--+---------+---------------------+-----------+
--| 3       | 2021-01-06 03:30:46 | timeout   |
--| 3       | 2021-07-14 14:00:00 | timeout   |
--| 7       | 2021-06-12 11:57:29 | confirmed |
--| 7       | 2021-06-13 12:58:28 | confirmed |
--| 7       | 2021-06-14 13:59:27 | confirmed |
--| 2       | 2021-01-22 00:00:00 | confirmed |
--| 2       | 2021-02-28 23:59:59 | timeout   |
--+---------+---------------------+-----------+
--Output: 
--+---------+-------------------+
--| user_id | confirmation_rate |
--+---------+-------------------+
--| 6       | 0.00              |
--| 3       | 0.00              |
--| 7       | 1.00              |
--| 2       | 0.50              |
--+---------+-------------------+
--The confirmation rate of a user is the number of 'confirmed' messages
--divided by the total number of requested confirmation messages. The confirmation rate of a user 
--that did not request any confirmation messages is 0. Round the confirmation rate to two decimal places.
select * from Confirmations
select * from Signups












