drop procedure if exists searchDriver;
delimiter $$
create procedure searchDriver(in _driverID int)
begin
	declare x int default false;
	select true into x from driver where id = _driverID;
	
	if x then 
		select * from driver where id = _driverID;
	else
		select "Driver Not found!";
	end if;
end$$
delimiter ;