drop trigger if exists insertVehicleTrigger;
delimiter $$
create trigger insertVehicleTrigger before insert on vehicle for each row
begin
	declare x int;
	DECLARE myException CONDITION FOR SQLSTATE '45000';
	select new.vehicleId into x from vehicle where vehicleId = new.vehicleId;
	
	if new.vehicleId = x then
		SIGNAL myException
		SET MESSAGE_TEXT = 'Vehicle already present...';
	end if;
end$$
delimiter ;