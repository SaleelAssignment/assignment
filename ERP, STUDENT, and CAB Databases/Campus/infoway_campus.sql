drop table if exists batch_students;
drop table if exists course_batches;
drop table if exists student_qualifications;
drop table if exists course_modules;
drop table if exists module;
drop table if exists faculty;
drop table if exists student;
drop table if exists course;


CREATE TABLE `infoway_campus`.`course` (
  `ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `duration` INT NULL,
  `summery` VARCHAR(1024) NULL,
  PRIMARY KEY (`ID`));


CREATE TABLE `infoway_campus`.`student` (
  `ID` INT NOT NULL,
  `namefirst` VARCHAR(45) NULL,
  `namelast` VARCHAR(45) NULL,
  `DOB` DATE NULL,
  `emailID` VARCHAR(128) NULL,
  `mobile` VARCHAR(10) NULL,
  `address` VARCHAR(100) NULL,
  PRIMARY KEY (`ID`));

CREATE TABLE `infoway_campus`.`faculty` (
  `ID` INT NOT NULL,
  `namefirst` VARCHAR(45) NULL,
  `namelast` VARCHAR(45) NULL,
  `DOB` DATE NULL,
  `emailID` VARCHAR(128) NULL,
  `mobile` VARCHAR(10) NULL,
  `address` VARCHAR(128) NULL,
  PRIMARY KEY (`ID`));

CREATE TABLE `infoway_campus`.`module` (
  `ID` INT NOT NULL,
  `name` VARCHAR(128) NULL,
  `duration` INT NULL,
  PRIMARY KEY (`ID`));


CREATE TABLE `infoway_campus`.`course_modules` (
  `ID` INT NOT NULL,
  `courseID` INT NULL,
  `moduleID` INT NULL,
  INDEX `courseID_idx` (`courseID` ASC),
  INDEX `moduleID_idx` (`moduleID` ASC),
  CONSTRAINT `courseID`
    FOREIGN KEY (`courseID`)
    REFERENCES `infoway_campus`.`course` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `moduleID`
    FOREIGN KEY (`moduleID`)
    REFERENCES `infoway_campus`.`modules` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE `infoway_campus`.`student_qualifications` (
  `ID` INT NOT NULL,
  `studentID` INT NULL,
  `name` VARCHAR(128) NULL,
  `college` VARCHAR(128) NULL,
  `university` VARCHAR(128) NULL,
  `marks` VARCHAR(45) NULL,
  `year` DATE NULL,
  PRIMARY KEY (`ID`));


CREATE TABLE `infoway_campus`.`course_batches` (
  `ID` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `courseID` INT NULL,
  `starton` DATE NULL,
  `endson` DATE NULL,
  `capicity` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `course_batches_idx` (`courseID` ASC),
  CONSTRAINT `course_batchesID`
    FOREIGN KEY (`courseID`)
    REFERENCES `infoway_campus`.`course` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE `infoway_campus`.`batch_students` (
  `ID` INT primary key NOT NULL,
  `batchID` INT NULL,
  `studentID` INT NULL,
  INDEX `studentID_idx` (`studentID` ASC),
  INDEX `bathchID_idx` (`batchID` ASC),
  CONSTRAINT `bathchID`
    FOREIGN KEY (`batchID`)
    REFERENCES `infoway_campus`.`course_batches` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `studentID`
    FOREIGN KEY (`studentID`)
    REFERENCES `infoway_campus`.`student` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

	
	
INSERT INTO `infoway_campus`.`course` (`ID`, `name`, `duration`, `summery`) VALUES ('1', 'PG-DAC', '6', 'This course is designed by CDAC');
INSERT INTO `infoway_campus`.`course` (`ID`, `name`, `duration`, `summery`) VALUES ('2', 'DBDA', '6', 'This course is designed by CDAC');
INSERT INTO `infoway_campus`.`course` (`ID`, `name`, `duration`, `summery`) VALUES ('3', 'Pre-DAC', '2', 'This course is designed by CDAC');
INSERT INTO `infoway_campus`.`course` (`ID`, `name`, `duration`, `summery`) VALUES ('4', 'JAVA', '3', 'This course is designed by Infoway');
INSERT INTO `infoway_campus`.`course` (`ID`, `name`, `duration`, `summery`) VALUES ('5', '.NET', '3', 'This course is designed by Infoway');


INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('1', 'saleel', 'bagde', '1984-06-12', 'saleel.bagde@gmail.com', '7032300034', '13758 Dogwood, St, Trona, CA, Los Angeles, 93562');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('2', 'omkar', 'rakde', '1969-10-25', 'omkar.rakde@gmail.com', '7032300039', '2263 Ga 17 Hwy N, Millen, GA, Atlanta, 30442');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('3', 'ulka', 'joshi', '1970-10-25', 'ulka.joshi@gmail.com', '7032300050', '409 Berry St, Louisa, KY, San Jose, 41230');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('4', 'rahul', 'patil', '1982-10-31', 'rahul.patil@gmail.com', '7032300027', '7720 Covington Rd, Pink Stand, TN, San Francisco, 37188');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('5', 'ruhan', 'bagde', '1984-01-12', 'ruhan.bagde@gmail.com', '7032300001', '15 Hempstead, St, Saugus, MA, Las Vega, 1906');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('6', 'lala', 'prasad', '1980-12-01', 'lala.prasad@gmail.com', '7032300079', '165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('7', 'sharmin', 'bagde', '1986-12-14', 'sharmin.bagde@gmail.com', '7032300081', 'Po Box 83, Faith, NC, New Jersey, 28041');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('8', 'vrushali', 'bagde', '1984-12-29', 'vrushali.bagde@gmail.com', '7032300054', '3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('9', 'vasant', 'khande', '1992-10-26', 'vasant.khande@gmail.com', '7032300059', '1615 Town Hall   , Oakland, TN, Oakland, 38060');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('10', 'nitish', 'patil', '1990-10-26', 'nitish.patil@gmail.com', '7032300086', '7710 Covington Rd , New State Road, New York, 37188');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('11', 'neel', 'save', '1975-10-30', 'neel.save@gmail.com', '7032300082', '15 Hempstead St, Saugus, MA, Boston, 1906');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('12', 'deep', 'save', '1986-11-30', 'deep.save@gmail.com', '7032300042', '165 Ken city, P.O. Box 942873, 50 Higuera Street, Oakland, 38060');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('13', 'nrupali', 'save', '1981-12-01', 'nrupali.save@gmail.com', '7032300055', 'Po Box 83, Faith, NC, null, New York, 28041');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('14', 'supriya', 'karnik', '1983-12-15', 'supriya.karnik@gmail.com', '7032300013', '808 Rocky Hill Rd, Plymouth 1993 Cross lane, Boston, 32360');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('15', 'bandish', 'karnik', '1987-12-30', 'bandish.karnik@gmail.com', '7032300099', '118 Lippitt Ave Warwick, 100 S. Main Street, Los Angeles, 12889');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('16', 'sangita', 'karnik', '1990-12-01', 'sangita.karnik@gmail.com', '7032300023', '5973 Moon Shadow Dr. Herriman, null, Atlanta, 2345');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('17', 'sangita', 'menon', '1989-10-26', 'sangita.menon@gmail.com', '7032300084', '13758 Dogwood St, Trona, null, San Jose, 93562');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('18', 'rahul', 'shah', '1982-06-12', 'rahul.shah@gmail.com', '7032300011', '2263 Ga 17 Hwy N, Millen, null, Las Vega, 30442');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('19', 'bhavin', 'patel', '1983-11-13', 'bhavin.patel@gmail.com', '7032300066', '321/vimal park, karve road, pune, 411038');
INSERT INTO `infoway_campus`.`student` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('20', 'kaushal', 'patil', '1982-07-30', 'kaushal.patil@gmail.com', '7032300096', 'Prashant Society, Kothrud, pune, 411038');


INSERT INTO `infoway_campus`.`faculty` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('1', 'prachi', 'gupta', '1974-06-12', 'prachi.gupta@gmail.com', '7832304023', '165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060');
INSERT INTO `infoway_campus`.`faculty` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('2', 'ketan', 'shukla', '1972-10-25', 'ketan.shukla@gmail.com', '4532306484', 'Po Box 83, Faith, NC, New Jersey, 28041');
INSERT INTO `infoway_campus`.`faculty` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('3', 'kiran', 'dev', '1971-10-25', 'kiran.dev@gmail.com', '8932309811', '3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313');
INSERT INTO `infoway_campus`.`faculty` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`, `mobile`, `address`) VALUES ('4', 'parag', 'patil', '1972-10-31', 'parag.patil@gmail.com', '6532307366', '1615 Town Hall   , Oakland, TN, Oakland, 38060');

