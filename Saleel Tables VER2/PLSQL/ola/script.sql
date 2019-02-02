drop procedure if exists insertDriver;
delimiter $$
create procedure insertDriver(in _driverID int, in _driverName varchar(45), in _gender varchar(1), _drivinglicence varchar(45))
begin
	insert into driver values (default,_driverID, _driverName, _gender, _drivinglicence);
	select "New driver inserted...";
end$$
delimiter ;

#-----------------------------------------------------

drop trigger if exists insertDriverTrigger;
delimiter $$
create trigger insertDriverTrigger before insert on driver for each row
begin
	declare x int;
	DECLARE myException CONDITION FOR SQLSTATE '45000';
	select new.driverId into x from driver where driverId = new.driverID;
	
	if new.driverId = x then
		SIGNAL myException
		SET MESSAGE_TEXT = 'Driver already present...';
	end if;
end$$
delimiter ;

#-----------------------------------------------------


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

#-----------------------------------------------------

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

#-----------------------------------------------------

drop procedure if exists insertVehicle;
delimiter $$
create procedure insertVehicle(in _vehicleID int, in _type varchar(45), in _model varchar(45), in _seates int)
begin
	insert into vehicle values (default, _vehicleID, _type, _model, _seates);
	select "New vehicle inserted...";
end$$
delimiter ;

#-----------------------------------------------------

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

#-----------------------------------------------------

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

#-----------------------------------------------------

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
			select "Logged in successfully!" as Message;
		else
			select "Login failed! driver is alredy logged in..." as Message;
		end if;
	else
		select "Vehicle not found" as Message;
	end if;
end$$
delimiter ;

#-----------------------------------------------------

drop trigger if exists LoginTrigger;
delimiter $$
create trigger LoginTrigger after insert on onduty for each row
begin
	insert into dutyhistory values(default, new.vehicleid, now(), current_time,null);
end$$
delimiter ;

#-----------------------------------------------------

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

#-----------------------------------------------------

drop trigger if exists LogoutTrigger;
delimiter $$
create trigger LogoutTrigger before delete on onduty for each row
begin
	update dutyhistory set logoutOn = now() where vehicleid = old.vehicleid and logoutOn is null;
end$$
delimiter ;

#-----------------------------------------------------


