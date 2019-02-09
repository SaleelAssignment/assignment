drop table if exists phone;
drop table if exists qualifications;
drop table if exists address;
drop table if exists spouse;
drop table if exists region;
drop table if exists products;
drop table if exists department;
drop table if exists employee;


CREATE TABLE `infoway_erp`.`employee` (
  `ID` INT primary key not NULL,
  `namefirst` VARCHAR(45) NULL,
  `namelast` VARCHAR(45) NULL,
  `DOB` DATE NULL,
  `emailID` VARCHAR(128) NULL);

CREATE TABLE `infoway_erp`.`department` (
  `ID` INT primary key not NULL,
  `name` VARCHAR(45) NULL,
  `phone` VARCHAR(10) NULL);


CREATE TABLE `infoway_erp`.`products` (
  `ID` INT primary key not NULL,
  `name` VARCHAR(45) NULL,
  `manufacturer` VARCHAR(45) NULL);


CREATE TABLE `infoway_erp`.`region` (
  `ID` INT primary key not NULL,
  `name` VARCHAR(45) NULL);

  
CREATE TABLE `infoway_erp`.`phone` (
  `ID` INT primary key not NULL,
  `employeeID` INT,
  number varchar(10),
  FOREIGN KEY(`employeeID`) REFERENCES `employee`(`id`));
 
 CREATE TABLE `infoway_erp`.`address` (
  `ID` INT primary key not NULL,
  `employeeID` INT,
  `address` varchar(128),
  FOREIGN KEY(`employeeID`) REFERENCES `employee`(`id`));

  
  CREATE TABLE `infoway_erp`.`qualifications` (
  `ID` INT PRIMARY KEY,
  `employeeID` INT,
  `name` VARCHAR(128) NULL,
  `college` VARCHAR(128) NULL,
  `university` VARCHAR(128) NULL,
  `marks` VARCHAR(45) NULL,
  `year` int NULL,
  FOREIGN KEY(`employeeID`) REFERENCES `employee`(`id`));
  
  
  CREATE TABLE `infoway_erp`.`spouse` (
  `ID` INT primary key,
  `employeeID` INT,
  `name` varchar(45),
  FOREIGN KEY(`employeeID`) REFERENCES `employee`(`id`));
  
  
  
  INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('1', 'Denis', 'Murphy', '1964-06-12', 'denis@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('2', 'Jenny', 'Ross', '1964-10-25', 'jenny@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('3', 'David', 'Ross', '1964-10-25', 'david@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `DOB`, `emailID`) VALUES ('4', 'Fred', '1965-10-31', 'fred@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('5', 'Helen', 'Taylor', '1965-01-12', 'helen@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('6', 'Rosaleen', 'Smith', '1965-12-01', 'rosaleen@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('7', 'Kent', 'Clark', '1960-12-14', 'kent@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('8', 'Sharon', 'Allen', '1960-12-29', 'sharon@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('9', 'Stacy', 'Ward', '1982-10-26', 'stacy@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('10', 'Betty', 'Jones', '1983-10-26', 'betty@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('11', 'Philip', 'Martin', '1984-10-30', 'philip@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('12', 'Lisa', 'Blake', '1984-11-30', 'lisa@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('13', 'David', 'Bell', '1985-12-01', 'david@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('14', 'Peter', 'Anderson', '1986-12-15', 'peter@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('15', 'Julia', 'Clark', '1987-12-30', 'julia@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('16', 'Alexander', 'Scott', '1965-12-01', 'alexander@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('17', 'Emma', 'Forster', '1982-10-26', 'emma@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('18', 'Kerr', 'King', '1964-06-12', 'kerr@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('19', 'kalyani', 'mane', '1963-11-13', 'kalyani@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `emailID`) VALUES ('20', 'Megha', 'Joshi', '1962-07-30', 'megha@gmail.com');



INSERT INTO `infoway_erp`.`department` (`ID`, `name`, `phone`) VALUES ('10', 'ACCOUNTING', '9850884556');
INSERT INTO `infoway_erp`.`department` (`ID`, `name`, `phone`) VALUES ('20', 'PURCHASE', '7070675410');
INSERT INTO `infoway_erp`.`department` (`ID`, `name`, `phone`) VALUES ('30', 'SALES', '9790771220');
INSERT INTO `infoway_erp`.`department` (`ID`, `name`, `phone`) VALUES ('40', 'MIS', '8080118552');



INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('1', 'Salt', 'TATA Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('2', 'Scooters', 'Bajaj Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('3', 'Internel', 'Reliance Industries');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('4', 'Power', 'Adani Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('5', 'Fertilizer', 'Gujarat Exports Ltd.');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('6', 'Tempo', 'Bajaj Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('7', 'Motorcycle', 'Bajaj Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('8', 'Tea', 'TATA Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('9', 'Coffee', 'TATA Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('10', 'Shirts', 'Reliance Industries');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('11', 'Watches', 'TATA Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('12', 'Fresh', 'Reliance Industries');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('13', 'Auto', 'Bajaj Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('14', 'Electricity', 'Adani Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('15', 'Electricity', 'TATA Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('16', 'Oil', 'Gujarat Exports Ltd.');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('17', 'Steel', 'TATA Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('18', 'Petrol', 'Gujarat Exports Ltd.');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('19', 'Ports', 'Adani Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('20', 'Trucks', 'TATA Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('21', 'Hotels', 'TATA Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('22', 'Sky', 'TATA Groups');
INSERT INTO `infoway_erp`.`products` (`ID`, `name`, `manufacturer`) VALUES ('23', 'IT', 'TATA Groups');



INSERT INTO `infoway_erp`.`region` (`ID`, `name`) VALUES ('1', 'North');
INSERT INTO `infoway_erp`.`region` (`ID`, `name`) VALUES ('2', 'South');
INSERT INTO `infoway_erp`.`region` (`ID`, `name`) VALUES ('3', 'East');
INSERT INTO `infoway_erp`.`region` (`ID`, `name`) VALUES ('4', 'West');


INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('1', '1', '13758 Dogwood, St, Trona, CA, Los Angeles, 93562');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('2', '2', '2263 Ga 17 Hwy N, Millen, GA, Atlanta, 30442');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('3', '3', '409 Berry St, Louisa, KY, San Jose, 41230');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('4', '4', '7720 Covington Rd, Pink Stand, TN, San Francisco, 37188');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('5', '5', '15 Hempstead, St, Saugus, MA, Las Vega, 1906');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('6', '6', '165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('7', '7', 'Po Box 83, Faith, NC, New Jersey, 28041');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('8', '8', '3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('9', '9', '1615 Town Hall, Oakland, TN, Oakland, 38060');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('10', '10', '7710 Covington Rd , New State Road, New York, 37188');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('11', '11', '15 Hempstead St, Saugus, MA, Boston, 1906');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('12', '12', '165 Ken city, P.O. Box 942873, 50 Higuera Street, Oakland, 38060');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('13', '13', 'Po Box 83, Faith, NC, null, New York, 28041');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('14', '14', '808 Rocky Hill Rd, Plymouth 1993 Cross lane, Boston, 32360');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('15', '15', '118 Lippitt Ave Warwick, 100 S. Main Street, Los Angeles, 12889');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('16', '16', '5973 Moon Shadow Dr. Herriman, null, Atlanta, 2345');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('17', '17', '13758 Dogwood St, Trona, null, San Jose, 93562');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('18', '18', '2263 Ga 17 Hwy N, Millen, null, Las Vega, 30442');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('19', '19', '321/vimal park, karve road, pune, 411038');
INSERT INTO `infoway_erp`.`address` (`ID`, `employeeID`, `address`) VALUES ('20', '20', 'Prashant Society, Kothrud, pune, 411038');


INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('1', '1', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('2', '1', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('3', '1', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('4', '2', '10', 'Alaska', 'University of Chicago', '68', '2013');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('5', '2', '12', 'New York', 'Yale University', '56', '2015');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('6', '2', 'B.Com', 'Arkansas', 'Yale University', '64', '2019');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('7', '3', '10', 'Arizona', 'Yale University', '75', '2011');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('8', '3', '12', 'California', 'California University', '86', '2013');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('9', '3', 'BE', 'Florida', 'University of Florida', '67', '2017');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('10', '4', '10', 'Idaho', 'Pennsylvania University', '58', '2010');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('11', '4', '12', 'New Hampshire', 'Yale University', '97', '2012');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('12', '4', 'M.Com.', 'Montana', 'Columbia University', '77', '2016');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('13', '5', '10', 'Alabama', 'Yale University', '56', '2008');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('14', '5', '12', 'Michigan', 'University of Michigan', '57', '2010');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('15', '5', 'M.Com.', 'Oklahoma', 'Stanford University', '86', '2014');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('16', '6', '10', 'Mississippi', 'Harvard University', '56', '2009');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('17', '6', '12', 'Alabama', 'Harvard University', '76', '2011');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('18', '6', 'BE', 'Indiana', 'University of Chicago', '87', '2015');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('19', '7', '10', 'Ohio', 'University of Ohio', '87', '2011');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('20', '7', '12', 'Iowa', 'Stanford University', '78', '2013');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('21', '7', 'BE', 'Kentucky', 'Harvard University', '97', '2017');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('22', '8', '10', 'Maryland', 'University Maryland', '56', '2010');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('23', '8', '12', 'Alabama', 'California University', '467', '2012');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('24', '8', 'M.Com.', 'Virginia', 'University of Florida', '87', '2016');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('25', '9', '10', 'Maine', 'Pennsylvania University', '98', '2012');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('26', '9', '12', 'Vermont', 'Yale University', '67', '2014');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('27', '9', 'BE', 'Kansas', 'Columbia University', '87', '2018');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('28', '10', '10', 'Texas', 'Yale University', '65', '2012');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('29', '10', '12', 'Oregon', 'University of Michigan', '76', '2014');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('30', '10', 'M.Com.', 'New Mexico', 'California University', '61', '2018');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('31', '11', '10', 'Nevada', 'University of Florida', '62', '2011');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('32', '11', '12', 'Indiana', 'Pennsylvania University', '63', '2013');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('33', '11', 'M.Com.', 'Ohio', 'University of Ohio', '56', '2017');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('34', '12', '10', 'New Hampshire', 'Yale University', '75', '2010');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('35', '12', '12', 'Montana', 'Stanford University', '45', '2012');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('36', '12', 'B.Com.', 'West Virginia', 'Harvard University', '50', '2016');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('37', '13', '10', 'Virginia', 'Harvard University', '67', '2012');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('38', '13', '12', 'Maine', 'University of Chicago', '78', '2014');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('39', '13', 'BE', 'Texas', 'University of Florida', '68', '2018');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('40', '14', '10', 'Oregon', 'University of Florida', '67', '2013');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('41', '14', '12', 'Florida', 'University of Florida', '87', '2015');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('42', '14', 'BE', 'Idaho', 'Yale University', '57', '2019');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('43', '15', '10', 'New Hampshire', 'California University', '96', '2011');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('44', '15', '12', 'Montana', 'University of Florida', '56', '2013');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('45', '15', 'BE', 'Alabama', 'Pennsylvania University', '65', '2017');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('46', '16', '10', 'Michigan', 'University of Michigan', '76', '2012');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('47', '16', '12', 'Oklahoma', 'Columbia University', '56', '2014');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('48', '16', 'BE', 'Mississippi', 'University of Michigan', '76', '2018');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('49', '17', '10', 'Alabama', 'University of Michigan', '88', '2013');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('50', '17', '12', 'Indiana', 'University of Michigan', '76', '2015');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('51', '17', 'BE', 'Ohio', 'University of Ohio', '68', '2019');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('52', '18', '10', 'Iowa', 'Stanford University', '86', '2011');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('53', '18', '12', 'Kentucky', 'Harvard University', '57', '2013');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('54', '18', 'BE', 'Maryland', 'Harvard University', '75', '2017');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('55', '19', '10', 'Alabama', 'University of Chicago', '69', '2013');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('56', '19', '12', 'Virginia', 'California University', '60', '2015');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('57', '19', 'BE', 'Maine', 'University of Florida', '61', '2019');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('58', '20', '10', 'Vermont', 'Pennsylvania University', '72', '2013');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('59', '20', '12', 'Iowa', 'Yale University', '83', '2015');
INSERT INTO `infoway_erp`.`qualifications` (`ID`, `employeeID`, `name`, `college`, `university`, `marks`, `year`) VALUES ('60', '20', 'BE', 'Maryland', 'Columbia University', '72', '2019');



INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('1', '1', 'marry');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('2', '2', 'jones');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('3', '3', 'leesa');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('4', '4', 'ket');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('5', '5', 'james');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('6', '6', 'brook');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('7', '7', 'jones');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('8', '8', 'denis');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('9', '9', 'holde');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('10', '10', 'richard');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('11', '11', 'marry');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('12', '12', 'brook');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('13', '13', 'betty');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('14', '14', 'sharon');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('15', '15', 'martin');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('16', '16', 'smith');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('17', '17', 'ali');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('18', '18', 'philip');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('19', '19', 'rajesh');
INSERT INTO `infoway_erp`.`spouse` (`ID`, `employeeID`, `name`) VALUES ('20', '20', 'rahul');

