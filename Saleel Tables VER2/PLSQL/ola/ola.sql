drop table if exists driver;
drop table if exists vehicle;
drop table if exists onDuty;
drop table if exists dutyHistory;

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
  FOREIGN KEY(`driverid`) REFERENCES `driver`);
  
  #-------------------------------------------
  #--use for login/logout table
  
    CREATE TABLE `db1`.`onDuty` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vehicleid` INT NOT NULL UNIQUE,
  `date` date not null,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`vehicleid`) REFERENCES `vehicle`);
  
  #-------------------------------------------
  
  CREATE TABLE `db1`.`dutyHistory` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vehicleid` INT NOT NULL,
  `date` date not null,
  `loginOn` time not null,
  `logoutOn` time,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`vehicleid`) REFERENCES `vehicle`);
  
  
  