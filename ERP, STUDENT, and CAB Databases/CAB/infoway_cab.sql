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
  `number` VARCHAR(10),
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

  

INSERT INTO `infoway_cab`.`driver` (`ID`, `namefirst`, `namelast`, `emailID`) VALUES ('1', 'sanjay', 'patil', 'sanjay.patil@gmail.com');
INSERT INTO `infoway_cab`.`driver` (`ID`, `namefirst`, `namelast`, `emailID`) VALUES ('2', 'sanju', 'das', 'sanju.das@gmail.com');
INSERT INTO `infoway_cab`.`driver` (`ID`, `namefirst`, `namelast`, `emailID`) VALUES ('3', 'ravi', 'kumar', 'ravi.kumar@gmail.com');
INSERT INTO `infoway_cab`.`driver` (`ID`, `namefirst`, `namelast`, `emailID`) VALUES ('4', 'raj', 'gandhi', 'raj.gandhi@gmail.com');
INSERT INTO `infoway_cab`.`driver` (`ID`, `namefirst`, `namelast`, `emailID`) VALUES ('5', 'raj', 'kumar', 'raj.kumar@gmail.com');


INSERT INTO `infoway_cab`.`vehicle` (`ID`, `number`, `model`, `type`, `capacity`) VALUES ('1', 'GJ-06 1745', 'Toyota Etios - J (Petrol)', 'car', '4');
INSERT INTO `infoway_cab`.`vehicle` (`ID`, `number`, `model`, `type`, `capacity`) VALUES ('2', 'GJ-06 1746', 'Toyota Etios - GD (diesel)', 'car', '6');
INSERT INTO `infoway_cab`.`vehicle` (`ID`, `number`, `model`, `type`, `capacity`) VALUES ('3', 'MH-12 6478', 'TATA - LXI(petrol)', 'mini bus', '10');
INSERT INTO `infoway_cab`.`vehicle` (`ID`, `number`, `model`, `type`, `capacity`) VALUES ('4', 'MH-12 6479', 'TATA - J (Petrol)', 'bus', '32');
INSERT INTO `infoway_cab`.`vehicle` (`ID`, `number`, `model`, `type`, `capacity`) VALUES ('5', 'MH-12 6480', 'Toyota Etios - GD (diesel)', 'car', '6');



INSERT INTO `infoway_cab`.`driver_licence` (`ID`, `driverID`, `licenceno`) VALUES ('1', '1', 'LI10NN2023');
INSERT INTO `infoway_cab`.`driver_licence` (`ID`, `driverID`, `licenceno`) VALUES ('2', '2', 'LK192NP199');
INSERT INTO `infoway_cab`.`driver_licence` (`ID`, `driverID`, `licenceno`) VALUES ('3', '3', 'LM983KC189');
INSERT INTO `infoway_cab`.`driver_licence` (`ID`, `driverID`, `licenceno`) VALUES ('4', '4', 'LK763KHH182');
INSERT INTO `infoway_cab`.`driver_licence` (`ID`, `driverID`, `licenceno`) VALUES ('5', '5', 'LJ101ABC123');


INSERT INTO `infoway_cab`.`driver_address` (`ID`, `driverID`, `address`) VALUES ('1', '1', 'Padu Road, Pune');
INSERT INTO `infoway_cab`.`driver_address` (`ID`, `driverID`, `address`) VALUES ('2', '2', 'MG, Road, Pune');
INSERT INTO `infoway_cab`.`driver_address` (`ID`, `driverID`, `address`) VALUES ('3', '3', 'Lane 1, Rasta Peth, Pune');
INSERT INTO `infoway_cab`.`driver_address` (`ID`, `driverID`, `address`) VALUES ('4', '4', 'Padu Road, Pune');
INSERT INTO `infoway_cab`.`driver_address` (`ID`, `driverID`, `address`) VALUES ('5', '5', 'MG, Road, Pune');


INSERT INTO `infoway_cab`.`driver_phone` (`ID`, `driverID`, `number`) VALUES ('1', '1', '9897663185');
INSERT INTO `infoway_cab`.`driver_phone` (`ID`, `driverID`, `number`) VALUES ('2', '2', '9860812334');
INSERT INTO `infoway_cab`.`driver_phone` (`ID`, `driverID`, `number`) VALUES ('3', '3', '8950338110');
INSERT INTO `infoway_cab`.`driver_phone` (`ID`, `driverID`, `number`) VALUES ('4', '4', '7870427824');
INSERT INTO `infoway_cab`.`driver_phone` (`ID`, `driverID`, `number`) VALUES ('5', '5', '7850339654');


