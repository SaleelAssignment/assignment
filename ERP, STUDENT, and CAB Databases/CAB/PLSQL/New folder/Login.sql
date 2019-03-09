drop procedure if exists Login;
delimiter $$
create procedure Login(in _driverID int, in _date date)
begin
	declare x int;
	DECLARE EXIT HANDLER FOR 1452 SELECT 'Driver not found';  
	select driverID into x from onduty where driverID = _driverID;
	
	if x is null then
		insert into onduty values(default, _driverID, _date, "onduty") ;
	else
		select "Driver is on duty.." as "Message";
	end if;
end$$
delimiter ;