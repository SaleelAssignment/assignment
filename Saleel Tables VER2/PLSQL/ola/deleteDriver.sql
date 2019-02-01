drop procedure if exists deleteDriver;
delimiter $$
create procedure deleteDriver(in _driverID int)
begin
	declare x int;
	select driverID into x from driver where driverID = _driverID;
	if x is not null then
		delete from driver where driverID = _driverID;
		select "Driver deleted...";
	else
		select "Driver not found...";
	end if;
end$$
delimiter ;