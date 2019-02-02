drop trigger if exists LoginTrigger;
delimiter $$
create trigger LoginTrigger after insert on onduty for each row
begin
	insert into dutyhistory values(default, new.vehicleid, now(), current_time,null);
end$$
delimiter ;