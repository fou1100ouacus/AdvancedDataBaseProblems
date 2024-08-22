use DBProblems
Create table  Employee (empId int, name varchar(255), supervisor int, salary int)
Create table  Bonus (empId int, bonus int)
Truncate table Employee
insert into Employee (empId, name, supervisor, salary) values ('3', 'Brad', NULL, '4000')
insert into Employee (empId, name, supervisor, salary) values ('1', 'John', '3', '1000')
insert into Employee (empId, name, supervisor, salary) values ('2', 'Dan', '3', '2000')
insert into Employee (empId, name, supervisor, salary) values ('4', 'Thomas', '3', '4000')
Truncate table Bonus
insert into Bonus (empId, bonus) values ('2', '500')
insert into Bonus (empId, bonus) values ('4', '2000')
--577. Employee Bonus
select* from Employee
select* from Bonus

SELECT 
e.name,b.bonus
FROM

Employee e
left join 
Bonus b
on e.empId=b.empId
where coalesce(b.bonus,0)<1000;




