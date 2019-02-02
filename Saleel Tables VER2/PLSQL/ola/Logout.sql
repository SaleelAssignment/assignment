drop procedure if exists Logout;
delimiter $$
create procedure Logout(in _vehicleID int)
begin
	declare x int;
	select vehicleid into x from dutyhistory where vehicleid = _vehicleID and logoutOn is null;
	
	if x is null then
		select "Driver is not present..." as Message;
	else
		delete from onduty where vehicleid = _vehicleID;
		select "Logged out successfully!" as Message;
	end if;
end$$
delimiter ;