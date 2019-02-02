drop procedure if exists Login;
delimiter $$
create procedure Login(in _vehicleID int)
begin
	declare x int;
	declare x1 int;
	select id into x from vehicle where id=_vehicleID;
	if x is not null then
		select vehicleid into x1 from onduty where vehicleid = _vehicleID;
		if x1 is null then
			insert into onduty values(default, _vehicleID, now());
			select "logged in successfully!";
		else
			select "Login failed! driver is alredy logged in...";
		end if;
	else
		select "Vehicle not found";
	end if;
end$$
delimiter ;