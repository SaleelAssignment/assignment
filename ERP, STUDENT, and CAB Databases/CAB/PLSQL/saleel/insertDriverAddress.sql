drop procedure if exists insertDriverAddress;
delimiter $$
create procedure insertDriverAddress(in _driverID int, in _address varchar(128))
begin
	declare x int;
    DECLARE EXIT HANDLER FOR 1062 SELECT concat('Address for driver ', _driverID, ' is present!')
    as "Message"; 
	select id into x from driver where id =  _driverID;
    if x is not null then
		insert into driver_address value (default, _driverID, _address);
		select concat("New driver address inserted... for driverID: ", _driverID) as "Message";
    else
		select "Driver not found!" as "Messge";
    end if;
end$$
delimiter ;