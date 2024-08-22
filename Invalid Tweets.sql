--Table: Tweets

--+----------------+---------+
--| Column Name    | Type    |
--+----------------+---------+
--| tweet_id       | int     |
--| content        | varchar |
--+----------------+---------+
--tweet_id is the primary key (column with unique values) for this table.
--This table contains all the tweets in a social media app.
 

--Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

--Return the result table in any order.
 Create table Tweets(tweet_id int, content varchar(50))
Truncate table Tweets
insert into Tweets (tweet_id, content) values ('1', 'Vote for Biden')
insert into Tweets (tweet_id, content) values ('2', 'Let us make America great again!')

select * from Tweets

SELECT tweet_id 
FROM Tweets 
WHERE LEN(content) > 15;
--select tweet_id from tweets where length(content)>15
