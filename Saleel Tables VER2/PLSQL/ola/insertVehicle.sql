drop procedure if exists insertVehicle;
delimiter $$
create procedure insertVehicle(in _vehicleID int, in _type varchar(45), in _model varchar(45), in _seates int)
begin
	insert into vehicle values (default, _vehicleID, _type, _model, _seates);
	select "New vehicle inserted...";
end$$
delimiter ;