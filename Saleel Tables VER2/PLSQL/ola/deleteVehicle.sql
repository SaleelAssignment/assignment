drop procedure if exists deleteVehicle;
delimiter $$
create procedure deleteVehicle(in _vehicleId int)
begin
	declare x int;
	select vehicleId into x from vehicle where vehicleId = _vehicleId;
	if x is not null then
		delete from vehicle where vehicleId = _vehicleId;
		select "Vehicle deleted...";
	else
		select "Vehicle not found...";
	end if;
end$$
delimiter ;