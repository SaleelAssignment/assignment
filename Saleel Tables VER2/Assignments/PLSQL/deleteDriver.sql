drop procedure if exists deleteDriver;
delimiter $$
create  procedure deleteDriver(in _driverID int)
begin
	delete from driver where driverID = _driverID;
	select "Driver deleted...";
end$$
delimiter ;