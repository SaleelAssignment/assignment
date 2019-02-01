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