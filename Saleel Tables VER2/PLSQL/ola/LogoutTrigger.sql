drop trigger if exists LogoutTrigger;
delimiter $$
create trigger LogoutTrigger before delete on onduty for each row
begin
	update dutyhistory set logoutOn = now() where vehicleid = old.vehicleid and logoutOn is null;
end$$
delimiter ;