drop procedure if exists insertDriverPhone;
delimiter $$
create procedure insertDriverPhone(in _driverID int, in _number varchar(10))
begin
	declare x int;
	select id into x from driver where id =  _driverID;
    if x is not null then
		insert into driver_phone value (default, _driverID, _number);
		select concat("New driver phone inserted... for driverID: ", _driverID) as "Message";
    else
		select "Driver not found!" as "Messge";
    end if;
end$$
delimiter ;