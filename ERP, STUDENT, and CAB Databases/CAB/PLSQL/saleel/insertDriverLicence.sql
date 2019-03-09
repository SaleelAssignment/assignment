drop procedure if exists insertDriverLicence;
delimiter $$
create procedure insertDriverLicence(in _driverID int, in _code varchar(45),
 in _DOI date, in _DOE date)
begin
	declare x int;
	select id into x from driver where id =  _driverID;
    if x is not null then
		insert into driver_Licence value (default, _driverID, _code, _DOI, _DOE);
		select concat("New driver licence inserted... for driverID: ", _driverID) as "Message";
    else
		select "Driver not found!" as "Messge";
    end if;
end$$
delimiter ;