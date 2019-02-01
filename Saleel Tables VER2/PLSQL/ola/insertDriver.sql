drop procedure if exists insertDriver;
delimiter $$
create procedure insertDriver(in _driverID int, in _driverName varchar(45), in _gender varchar(1), _drivinglicence varchar(45))
begin
	/*declare x int;
	select id into x from driver where driverId = _driverID;
	if (x is not null or x<>0) then
		select "Driver Found";
	else
		insert into driver values (default,_driverID, _driverName, _gender, _drivinglicence);
		select "New driver inserted...";
	end if;*/
	insert into driver values (default,_driverID, _driverName, _gender, _drivinglicence);
	select "New driver inserted...";
end$$
delimiter ;