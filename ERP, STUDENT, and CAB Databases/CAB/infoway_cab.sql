drop table if exists driver;
drop table if exists vehicle;


CREATE TABLE `infoway_cab`.`driver` (
  `ID` INT primary key NOT NULL,
  `namefirst` VARCHAR(45) NULL,
  `namelast` VARCHAR(45) NULL,
  `address` VARCHAR(128) NULL,
  `emailID` VARCHAR(45) NULL,
  `phone` VARCHAR(10) NULL,
  `licenseno` VARCHAR(45) NULL);

CREATE TABLE `infoway_cab`.`vehicle` (
  `ID` INT primary key NOT NULL,
  `number` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `type` VARCHAR(45) NULL,
  `capacity` VARCHAR(45) NULL);

  
  
INSERT INTO `infoway_cab`.`driver` (`ID`, `namefirst`, `namelast`, `address`, `emailID`, `mobile`, `licenseno`) VALUES ('1', 'sanjay', 'patil', 'Padu Road, Pune', 'sanjay.patil@gmail.com', '9897663185', 'LI10NN2023');
INSERT INTO `infoway_cab`.`driver` (`ID`, `namefirst`, `namelast`, `address`, `emailID`, `mobile`, `licenseno`) VALUES ('2', 'sanju', 'das', 'MG, Road, Pune', 'sanju.das@gmail.com', '9860812334', 'LK192NP199');
INSERT INTO `infoway_cab`.`driver` (`ID`, `namefirst`, `namelast`, `address`, `emailID`, `mobile`, `licenseno`) VALUES ('3', 'ravi', 'kumar', 'Lane 1, Rasta Peth, Pune', 'ravi.kumar@gmail.com', '8950338110', 'LM983KC189');
INSERT INTO `infoway_cab`.`driver` (`ID`, `namefirst`, `namelast`, `address`, `emailID`, `mobile`, `licenseno`) VALUES ('4', 'raj', 'gandhi', 'Padu Road, Pune', 'raj.gandhi@gmail.com', '7870427824', 'LK763KHH182');
INSERT INTO `infoway_cab`.`driver` (`ID`, `namefirst`, `namelast`, `address`, `emailID`, `mobile`, `licenseno`) VALUES ('5', 'raj', 'kumar', 'MG, Road, Pune', 'raj.kumar@gmail.com', '7850339654', 'LJ101ABC123');


INSERT INTO `infoway_cab`.`vehicle` (`ID`, `number`, `model`, `type`, `capicity`) VALUES ('1', 'GJ-06 1745', 'Toyota Etios - J (Petrol)', 'car', '4');
INSERT INTO `infoway_cab`.`vehicle` (`ID`, `number`, `model`, `type`, `capicity`) VALUES ('2', 'GJ-06 1746', 'Toyota Etios - GD (diesel)', 'car', '6');
INSERT INTO `infoway_cab`.`vehicle` (`ID`, `number`, `model`, `type`, `capicity`) VALUES ('3', 'MH-12 6478', 'TATA - LXI(petrol)', 'mini bus', '10');
INSERT INTO `infoway_cab`.`vehicle` (`ID`, `number`, `model`, `type`, `capicity`) VALUES ('4', 'MH-12 6479', 'TATA - J (Petrol)', 'bus', '32');
INSERT INTO `infoway_cab`.`vehicle` (`ID`, `number`, `model`, `type`, `capicity`) VALUES ('5', 'MH-12 6480', 'Toyota Etios - GD (diesel)', 'car', '6');
