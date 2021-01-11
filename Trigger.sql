/* 

drop trigger if exists insert_in_item_ordered;
delimiter $$

create trigger insert_in_item_ordered before insert on item_ordered for each row
begin
	declare x int;
	SET new.orderDate := current_date();
	SET new.orderTime := current_time();
	
	select itemID into x from item where itemID = new.itemID;
	if x is null then
	   signal sqlstate '42000' SET message_text = "Item not found in item table!";
	end if;
end $$

delimiter ;

------------------------------------------------------------------------------------------------------

drop trigger if exists readOnlyItemName;
delimiter $$

create trigger readOnlyItemName after update on item for each row
begin
	signal sqlstate '42000' set message_text = 'Product name is read-only and it can not be changed.';
end $$   
delimiter ;

------------------------------------------------------------------------------------------------------

drop trigger if exists itemID_primaryKey;
delimiter $$

create trigger itemID_primaryKey after insert on item for each row
begin
	declare x int;
	select itemId into x from item where itemId = new.itemID;
	if x is null then
		signal sqlstate '42000' set message_text = 'itemID already present, cannot insert duplicate itemID.';
	end if;
end $$   
delimiter ;


drop trigger if exists customer_AccountID;
delimiter $$

create trigger customer_AccountID before insert on customer_account for each row
begin
	declare x int;
	
	select max(cast(substr(accountID, 5) AS UNSIGNED)) + 1 into x from customer_account where account_Type = new.account_Type;
	
	if x is null then
		if new.account_Type = 'saving' then
			SET new.accountID = concat('S/A-', 1);
		ELSEIF new.account_Type = 'current' then
			SET new.accountID = concat('C/A-', 1);
		else
			signal sqlstate '42000' SET message_text = "Invalid Account Type!";
		end if;
	else
		if new.account_Type = 'saving' then
			SET new.accountID = concat('S/A-', x);
		else
			SET new.accountID = concat('C/A-', x);
			end if;
	end if;
end $$

delimiter ;

------------------------------------------------------------------------------------------------------

drop trigger if exists customer_phone;
delimiter $$

create trigger customer_phone before insert on customer_account for each row
begin
	SET new.phone_number := rpad(left(new.phone_number, 4), 10, 'x');
end $$

delimiter ;

------------------------------------------------------------------------------------------------------

drop trigger if exists open_date;
delimiter $$

create trigger open_date before insert on customer_account for each row
begin
	if new.opendate > curDate() then
		signal sqlstate '42000' SET message_text = 'Invalid Opening Date!';
	end if;
end $$

delimiter ;

/*

------------------------------------------------------------------------------------------------------

drop procedure if exists showCustomerAccount;
delimiter $$

create procedure showCustomerAccount()
begin
	select * from customer_Account;
end $$

delimiter ;

------------------------------------------------------------------------------------------------------

drop trigger if exists lock_issue_card;
delimiter $$

create trigger lock_issue_card before insert on credit_card for each row
begin
	if @TRIGGER_DISABLED is False or cast(@TRIGGER_DISABLED as char) is null then
		set @TRIGGER_DISABLED := True;
		signal sqlstate '42000' set message_text = 'You cannot insert data in issue_card table';
	end if;
end $$
delimiter ;


drop trigger if exists issue_card;
delimiter $$

create trigger issue_card before insert on credit_card for each row
begin
	declare x varchar(20);
	if @TRIGGER_DISABLED is True then
		set @TRIGGER_DISABLED := False;
		select  accountID into x from customer_Account where accountID = new.accountID;
		if x is null then
		   signal sqlstate '42000' set message_text = 'Invalid Account Number, card cannot be issued! "Contact customer care!"';
		end if;
	end if;
end $$   
delimiter ;


drop procedure if exists issueCard;
delimiter $$

create procedure issueCard(in _accountID varchar(20), _issueDate date, _pin int, _isactive bool)
begin
	if @TRIGGER_DISABLED is True then 
		insert into credit_card values(_accountID, _issueDate, _pin, _isactive);
	end if;
end $$

delimiter ;

------------------------------------------------------------------------------------------------------
  
 */

































































































































