drop procedure if exists insertDriver;
delimiter $$
create procedure insertDriver(in _id int, in _namefirst varchar(45), in _namelast varchar(45), 
_emailID varchar(45))
begin
	declare _driverID int;
	DECLARE EXIT HANDLER FOR 1062 SELECT concat('Driver ID ', _ID , " is present!") as "Message"; 
	insert into driver values (_id,_namefirst, _namelast, _emailID);
	select concat("New driver inserted... and  driverID is: ", _id) as "Message";
end$$
delimiter ;