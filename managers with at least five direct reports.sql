Create table Employeey  (id int, name varchar(255), department varchar(255), managerId int)
Truncate table Employee 
insert into Employeey (id, name, department, managerId) values ('101', 'John', 'A', NULL)
insert into Employeey (id, name, department, managerId) values ('102', 'Dan', 'A', '101')
insert into Employeey (id, name, department, managerId) values ('103', 'James', 'A', '101')
insert into Employeey (id, name, department, managerId) values ('104', 'Amy', 'A', '101')
insert into Employeey (id, name, department, managerId) values ('105', 'Anne', 'A', '101')
insert into Employeey (id, name, department, managerId) values ('106', 'Ron', 'B', '101')
--managers with at least five direct reports
--Employee table:
--+-----+-------+------------+-----------+
--| id  | name  | department | managerId |
--+-----+-------+------------+-----------+
--| 101 | John  | A          | null      |
--| 102 | Dan   | A          | 101       |
--| 103 | James | A          | 101       |
--| 104 | Amy   | A          | 101       |
--| 105 | Anne  | A          | 101       |
--| 106 | Ron   | B          | 101       |
--+-----+-------+------------+-----------+
--Output: 
--+------+
--| name |
--+------+
--| John |
--+------+

--h1 Try to get all the mangerIDs that have count bigger than 5

--select managerId from Employeey where id =101
select*from Employeey

select name from employeey where id in
(
select managerId from employeey group by managerId
having (count(distinct id)>=5)

)

-----
select name from employeey
where id in 
(

select managerId from employeey
group by managerId
having count(managerId)>=5

); ;