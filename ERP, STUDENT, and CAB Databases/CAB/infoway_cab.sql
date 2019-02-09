drop table if exists driver_address;
drop table if exists driver_licence;
drop table if exists driver_phone;
drop table if exists onduty;
drop table if exists dutyhistory;

drop table if exists driver;
drop table if exists vehicle;


CREATE TABLE `infoway_cab`.`driver` (
  `ID` INT primary key,
  `namefirst` VARCHAR(45) ,
  `namelast` VARCHAR(45) ,
  `emailID` VARCHAR(45));
  

  
CREATE TABLE `infoway_cab`.`driver_licence` (
  `ID` INT primary key,
  `driverID` INT,
  `licenceno` VARCHAR(45),
  FOREIGN KEY(`driverID`) REFERENCES `driver`(`id`));
  
  
  
CREATE TABLE `infoway_cab`.`driver_address` (
  `ID` INT primary key,
  `driverID` INT,
  `address` VARCHAR(128),
  FOREIGN KEY(`driverID`) REFERENCES `driver`(`id`));
  
  
  
CREATE TABLE `infoway_cab`.`driver_phone` (
  `ID` INT primary key,
  `driverID` INT,
  `phone` VARCHAR(10),
  FOREIGN KEY(`driverID`) REFERENCES `driver`(`id`));
  
  
CREATE TABLE `infoway_cab`.`vehicle` (
  `ID` INT primary key,
  `number` VARCHAR(45),
  `model` VARCHAR(45),
  `type` VARCHAR(45),
  `capacity` VARCHAR(45));

  
CREATE TABLE `infoway_cab`.`onduty` (
  `ID` INT primary key,
  `vehicleID` int,
  `date` date,
  `status` varchar(45),
  FOREIGN KEY(`vehicleID`) REFERENCES `vehicle`(`id`));
  
 
CREATE TABLE `infoway_cab`.`dutyhistory` (
  `ID` INT primary key,
  `vehicleID` int,
  `date` date,
  `loginon` date,
  `logouton` date,
  FOREIGN KEY(`vehicleID`) REFERENCES `vehicle`(`id`));
