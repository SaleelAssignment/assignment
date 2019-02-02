drop procedure if exists insertDriver;
delimiter $$
create procedure insertDriver(in _driverID int, in _driverName varchar(45), in _gender varchar(1), _drivinglicence varchar(45))
begin
	insert into driver values (default,_driverID, _driverName, _gender, _drivinglicence);
	select "New driver inserted...";
end$$
delimiter ;