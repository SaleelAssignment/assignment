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
*/

drop trigger if exists customer_phone;
delimiter $$

create trigger customer_phone before insert on customer_account for each row
begin
	SET new.phone_number := rpad(left(new.phone_number, 4), 10, 'x');
	
end $$

delimiter ;


/*
drop trigger if exists issue_card;
delimiter $$

create trigger issue_card before insert on credit_card for each row
begin
	declare x varchar(20);
	select  accountID into x from customer_Account where accountID = new.accountID;
	if x is null then
		signal sqlstate '42000' set message_text = 'Invalid Account Number, card cannot be issued! "Contact customer care!"';
	end if;
end $$

delimiter ;

------------------------------------------------------------------------------------------------------

drop procedure if exists showCustomerAccount;
delimiter $$

create procedure showCustomerAccount()
begin
	select * from customer_Account;
end $$

delimiter ;
*/ 
