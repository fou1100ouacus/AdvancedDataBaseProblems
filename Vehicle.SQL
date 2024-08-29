SELECT Makes.Make,FuelTypes.FuelTypeName,count(*)as NumOfVechails
from Makes inner join VehicleDetails on Makes.MakeID=VehicleDetails.MakeID inner join FuelTypes on 
VehicleDetails.FuelTypeID=FuelTypes.FuelTypeID
group by Makes.Make,FuelTypes.FuelTypeName
order by Make ASC
-------------------
SELECT Distinct Makes.Make,FuelTypes.FuelTypeName,count(*)as NumOfVechails
from Makes inner join VehicleDetails on Makes.MakeID=VehicleDetails.MakeID inner join FuelTypes on 
VehicleDetails.FuelTypeID=FuelTypes.FuelTypeID
group by Makes.Make,FuelTypes.FuelTypeName
order by Make ASC  
--------------------
select
(
CAST( (select count(*) from VehicleDetails
where NumDoors is Null) as float)

/
Cast( (select count(*) from VehicleDetails ) as float)
) as PercOfNoSpecifiedDoors
-----------
 select * from VehicleDetails where Year =1950

-----
select found=1 
where
exists (
 select top 1 * from VehicleDetails where Year =1950
 )

 ---------------

 Select distinct VehicleDetails.NumDoors from 
VehicleDetails
Order by NumDoors
SELECT VehicleDetails.Vehicle_Display_Name,
VehicleDetails.NumDoors,
DoorDescription=
CASE
WHEN NumDoors is null THEN 'Not Set'
WHEN NumDoors = 0 THEN 'Zero Doors'
WHEN NumDoors = 1 THEN 'One Door'
WHEN NumDoors = 2 THEN 'Two Doors'
WHEN NumDoors = 3 THEN 'Three Doors'
WHEN NumDoors = 4 THEN 'Four Doors'
WHEN NumDoors = 5 THEN 'Five Doors'
WHEN NumDoors = 6 THEN 'Six Doors'
WHEN NumDoors = 8 THEN 'Eight Doors'
ELSE 'UnKnown'
END
FROM VehicleDetails






