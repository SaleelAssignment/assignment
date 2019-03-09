drop procedure if exists insertDriver;
delimiter $$
create procedure insertDriver(in _id int, in _namefirst varchar(45), in _namelast varchar(45), _emailID varchar(45), _address varchar(128), _number varchar(10))
begin
	declare _driverID int;
	DECLARE EXIT HANDLER FOR 1062 SELECT concat('Driver ID ', _ID , " is present!") as "Message"; 
	
	insert into driver values (_id,_namefirst, _namelast, _emailID);

		
	insert into driver_address values(default, _ID, _address);
	

	insert into driver_phone values(default, _ID, _number);
	

	select concat("New driver inserted... and  driverID is: ", _id) as "Message";
	
end$$
delimiter ;
