drop table if exists dutyHistory;
drop table if exists onDuty;
drop table if exists vehicle;
drop table if exists driver;

CREATE TABLE `db1`.`driver` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` INT,
  `name` VARCHAR(45) NULL,
  `gender` VARCHAR(1) NULL,
  `licence` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
#-------------------------------------------
  
  CREATE TABLE `db1`.`vehicle` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `driverid` INT NOT NULL UNIQUE,
  `code` INT,
  `type` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `vehicleno` VARCHAR(45) NULL,
  `seats` INT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`driverid`) REFERENCES `driver`(`id`));
  
  #-------------------------------------------
  #--use for login/logout table
  
  CREATE TABLE `db1`.`onDuty` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vehicleid` INT NOT NULL UNIQUE,
  `date` date not null,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`vehicleid`) REFERENCES `vehicle`(`id`));
  
  #-------------------------------------------
  
  CREATE TABLE `db1`.`dutyHistory` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vehicleid` INT NOT NULL,
  `date` date not null,
  `loginOn` time not null,
  `logoutOn` time,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`vehicleid`) REFERENCES `vehicle`(`id`));
  
  #-----------------------------------------------
  
INSERT INTO `db1`.`driver` (`id`, `code`, `name`, `gender`, `licence`) VALUES ('1', '10', 'Saleel', 'M', 'MH01/2010/0051926');
INSERT INTO `db1`.`driver` (`id`, `code`, `name`, `gender`, `licence`) VALUES ('2', '20', 'Raju', 'M', 'MH01/2010/0051927');
INSERT INTO `db1`.`driver` (`id`, `code`, `name`, `gender`, `licence`) VALUES ('3', '30', 'Vasant', 'M', 'MH01/2010/0051928');
INSERT INTO `db1`.`driver` (`id`, `code`, `name`, `gender`, `licence`) VALUES ('4', '40', 'Rahul', 'M', 'MH01/2010/0051929');
INSERT INTO `db1`.`driver` (`id`, `code`, `name`, `gender`, `licence`) VALUES ('5', '50', 'Sameer', 'M', 'MH01/2010/0051930');
INSERT INTO `db1`.`driver` (`id`, `code`, `name`, `gender`, `licence`) VALUES ('6', '60', 'Ketan', 'M', 'MH01/2010/0051931');
INSERT INTO `db1`.`driver` (`id`, `code`, `name`, `gender`, `licence`) VALUES ('7', '70', 'Pooja', 'F', 'MH01/2010/0051932');
INSERT INTO `db1`.`driver` (`id`, `code`, `name`, `gender`, `licence`) VALUES ('8', '80', 'Seema', 'F', 'MH01/2010/0051933');
INSERT INTO `db1`.`driver` (`id`, `code`, `name`, `gender`, `licence`) VALUES ('9', '90', 'Ulka', 'F', 'MH01/2010/0051934');
INSERT INTO `db1`.`driver` (`id`, `code`, `name`, `gender`, `licence`) VALUES ('10', '100', 'Ketan', 'M', 'MH01/2010/0051935');

#-----------------------------------------------
INSERT INTO `db1`.`vehicle` (`id`, `driverid`, `code`, `type`, `model`, `vehicleno`, `seats`) VALUES ('1', '1', '101', 'Car', 'Toyota Etios - J (Petrol)', 'MH-12', '4');
INSERT INTO `db1`.`vehicle` (`id`, `driverid`, `code`, `type`, `model`, `vehicleno`, `seats`) VALUES ('2', '2', '102', 'Car', 'Toyota Etios - GD (diesel)', 'MH-12', '6');
INSERT INTO `db1`.`vehicle` (`id`, `driverid`, `code`, `type`, `model`, `vehicleno`, `seats`) VALUES ('3', '3', '103', 'Car', 'Ertiga - LXI(petrol)', 'MH-12', '4');
INSERT INTO `db1`.`vehicle` (`id`, `driverid`, `code`, `type`, `model`, `vehicleno`, `seats`) VALUES ('4', '4', '104', 'Car', 'Toyota Etios - J (Petrol)', 'MH-12', '6');
INSERT INTO `db1`.`vehicle` (`id`, `driverid`, `code`, `type`, `model`, `vehicleno`, `seats`) VALUES ('5', '5', '105', 'Car', 'Toyota Etios - GD (diesel)', 'MH-12', '4');
INSERT INTO `db1`.`vehicle` (`id`, `driverid`, `code`, `type`, `model`, `vehicleno`, `seats`) VALUES ('6', '6', '106', 'Car', 'Ertiga - LXI(petrol)', 'MH-12', '6');
INSERT INTO `db1`.`vehicle` (`id`, `driverid`, `code`, `type`, `model`, `vehicleno`, `seats`) VALUES ('7', '7', '107', 'Car', 'Toyota Etios - J (Petrol)', 'MH-12', '4');
INSERT INTO `db1`.`vehicle` (`id`, `driverid`, `code`, `type`, `model`, `vehicleno`, `seats`) VALUES ('8', '8', '108', 'Car', 'Toyota Etios - GD (diesel)', 'MH-12', '4');
INSERT INTO `db1`.`vehicle` (`id`, `driverid`, `code`, `type`, `model`, `vehicleno`, `seats`) VALUES ('9', '9', '109', 'Car', 'Ertiga - LXI(petrol)', 'MH-12', '4');
INSERT INTO `db1`.`vehicle` (`id`, `driverid`, `code`, `type`, `model`, `vehicleno`, `seats`) VALUES ('10', '10', '110', 'Car', 'Toyota Etios - J (Petrol)', 'MH-12', '4');

#-----------------------------------------------

INSERT INTO `db1`.`onduty` (`id`, `vehicleid`, `date`) VALUES ('1', '2', '2019-01-31');
INSERT INTO `db1`.`onduty` (`id`, `vehicleid`, `date`) VALUES ('2', '4', '2019-01-31');
INSERT INTO `db1`.`onduty` (`id`, `vehicleid`, `date`) VALUES ('3', '6', '2019-01-31');
INSERT INTO `db1`.`onduty` (`id`, `vehicleid`, `date`) VALUES ('4', '8', '2019-01-31');
	
	
#-----------------------------------------------

INSERT INTO `db1`.`dutyhistory` (`id`, `vehicleid`, `date`, `loginOn`, `logoutOn`) VALUES ('1', '2', '2019-01-31', '07:00',NULL);
INSERT INTO `db1`.`dutyhistory` (`id`, `vehicleid`, `date`, `loginOn`, `logoutOn`) VALUES ('2', '4', '2019-01-30', '12:00', '01:10');
INSERT INTO `db1`.`dutyhistory` (`id`, `vehicleid`, `date`, `loginOn`, `logoutOn`) VALUES ('3', '6', '2019-01-31', '09:30',NULL);
INSERT INTO `db1`.`dutyhistory` (`id`, `vehicleid`, `date`, `loginOn`, `logoutOn`) VALUES ('4', '8', '2019-01-30', '08:00', '09:30');
INSERT INTO `db1`.`dutyhistory` (`id`, `vehicleid`, `date`, `loginOn`, `logoutOn`) VALUES ('5', '2', '2019-01-30', '08:00', '08:30');
INSERT INTO `db1`.`dutyhistory` (`id`, `vehicleid`, `date`, `loginOn`, `logoutOn`) VALUES ('6', '4', '2019-01-31', '11:45',NULL);
INSERT INTO `db1`.`dutyhistory` (`id`, `vehicleid`, `date`, `loginOn`, `logoutOn`) VALUES ('7', '6', '2019-01-30', '10:30', '10:45');
INSERT INTO `db1`.`dutyhistory` (`id`, `vehicleid`, `date`, `loginOn`, `logoutOn`) VALUES ('8', '8', '2019-01-31', '07:30',NULL);
