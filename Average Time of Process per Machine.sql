-- Create the table with ENUM and FLOAT types
CREATE TABLE Activity (
    machine_id INT,
    process_id INT,
    activity_type VARCHAR(5),
    timestamp FLOAT,
    CONSTRAINT chk_activity_type CHECK (activity_type IN ('start', 'end'))
);
INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) 
VALUES 
(0, 0, 'start', 0.712),
(0, 0, 'end', 1.52),
(0, 1, 'start', 3.14),
(0, 1, 'end', 4.12),
(1, 0, 'start', 0.55),
(1, 0, 'end', 1.55),
(1, 1, 'start', 0.43),
(1, 1, 'end', 1.42),
(2, 0, 'start', 4.1),
(2, 0, 'end', 4.512),
(2, 1, 'start', 2.5),
(2, 1, 'end', 5.0);
--Average Time of Process per Machine
--Activity table:
--+------------+------------+---------------+-----------+
--| machine_id | process_id | activity_type | timestamp |
--+------------+------------+---------------+-----------+
--| 0          | 0          | start         | 0.712     |
--| 0          | 0          | end           | 1.520     |
--| 0          | 1          | start         | 3.140     |
--| 0          | 1          | end           | 4.120     |
--| 1          | 0          | start         | 0.550     |
--| 1          | 0          | end           | 1.550     |
--| 1          | 1          | start         | 0.430     |
--| 1          | 1          | end           | 1.420     |
--| 2          | 0          | start         | 4.100     |
--| 2          | 0          | end           | 4.512     |
--| 2          | 1          | start         | 2.500     |
--| 2          | 1          | end           | 5.000     |
--+------------+------------+---------------+-----------+
--Output: 
--+------------+-----------------+
--| machine_id | processing_time |
--+------------+-----------------+
--| 0          | 0.894           |
--| 1          | 0.995           |
--| 2          | 1.456           |
--+------------+-----------------+

select * from Activity
--ound the average processing time to 3 decimal places + 
select a1.machine_id, round(avg(a2.timestamp - a1.timestamp), 3) as processing_time 
from Activity a1
join Activity a2 
--loooooooop 
on a1.machine_id=a2.machine_id and a1.process_id=a2.process_id
and a1.activity_type='start' and a2.activity_type='end'
group by a1.machine_id
----------




----
