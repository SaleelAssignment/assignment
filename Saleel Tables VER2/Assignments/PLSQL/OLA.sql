CREATE TABLE `db1`.`driver` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `DriverID` VARCHAR(20) NOT NULL,
  `DriverName` VARCHAR(45) NOT NULL,
  `Gender` VARCHAR(1) NULL,
  `DrivingLicence` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`));