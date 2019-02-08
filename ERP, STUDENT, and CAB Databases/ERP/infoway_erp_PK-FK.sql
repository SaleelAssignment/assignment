drop table if exists region;
drop table if exists products;
drop table if exists department;
drop table if exists employee;
drop table if exists phone;

CREATE TABLE `infoway_erp`.`employee` (
  `ID` INT primary key not NULL,
  `namefirst` VARCHAR(45) NULL,
  `namelast` VARCHAR(45) NULL,
  `DOB` DATE NULL,
  `address` VARCHAR(128) NULL,
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
  `studentID` INT,
  number varchar(10),
  FOREIGN KEY(`studentID`) REFERENCES `employee`(`id`));
 
 
 INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('1', 'Denis', 'Murphy', '1964-06-12', '13758 Dogwood, St, Trona, CA, Los Angeles, 93562', 'denis@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('2', 'Jenny', 'Ross', '1964-10-25', '2263 Ga 17 Hwy N, Millen, GA, Atlanta, 30442', 'jenny@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('3', 'David', 'Ross', '1964-10-25', '409 Berry St, Louisa, KY, San Jose, 41230', 'david@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `DOB`, `address`, `emailID`) VALUES ('4', 'Fred', '1965-10-31', '7720 Covington Rd, Pink Stand, TN, San Francisco, 37188', 'fred@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('5', 'Helen', 'Taylor', '1965-01-12', '15 Hempstead, St, Saugus, MA, Las Vega, 1906', 'helen@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('6', 'Rosaleen', 'Smith', '1965-12-01', '165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060', 'rosaleen@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('7', 'Kent', 'Clark', '1960-12-14', 'Po Box 83, Faith, NC, New Jersey, 28041', 'kent@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('8', 'Sharon', 'Allen', '1960-12-29', '3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313', 'sharon@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('9', 'Stacy', 'Ward', '1982-10-26', '1615 Town Hall   , Oakland, TN, Oakland, 38060', 'stacy@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('10', 'Betty', 'Jones', '1983-10-26', '7710 Covington Rd , New State Road, New York, 37188', 'betty@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('11', 'Philip', 'Martin', '1984-10-30', '15 Hempstead St, Saugus, MA, Boston, 1906', 'philip@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('12', 'Lisa', 'Blake', '1984-11-30', '165 Ken city, P.O. Box 942873, 50 Higuera Street, Oakland, 38060', 'lisa@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('13', 'David', 'Bell', '1985-12-01', 'Po Box 83, Faith, NC, null, New York, 28041', 'david@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('14', 'Peter', 'Anderson', '1986-12-15', '808 Rocky Hill Rd, Plymouth 1993 Cross lane, Boston, 32360', 'peter@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('15', 'Julia', 'Clark', '1987-12-30', '118 Lippitt Ave Warwick, 100 S. Main Street, Los Angeles, 12889', 'julia@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('16', 'Alexander', 'Scott', '1965-12-01', '5973 Moon Shadow Dr. Herriman, null, Atlanta, 2345', 'alexander@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('17', 'Emma', 'Forster', '1982-10-26', '13758 Dogwood St, Trona, null, San Jose, 93562', 'emma@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('18', 'Kerr', 'King', '1964-06-12', '2263 Ga 17 Hwy N, Millen, null, Las Vega, 30442', 'kerr@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('19', 'kalyani', 'mane', '1963-11-13', '321/vimal park, karve road, pune, 411038', 'kalyani@gmail.com');
INSERT INTO `infoway_erp`.`employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `emailID`) VALUES ('20', 'Megha', 'Joshi', '1962-07-30', 'Prashant Society, Kothrud, pune, 411038', 'megha@gmail.com');



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


INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('1', '1', '7032300034');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('2', '2', '7032300039');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('3', '3', '7032300050');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('4', '4', '7032300027');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('5', '5', '7032300001');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('6', '6', '7032300079');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('7', '7', '7032300081');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('8', '8', '7032300054');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('9', '9', '7032300059');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('10', '10', '7032300086');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('11', '11', '7032300082');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('12', '12', '7032300042');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('13', '13', '7032300055');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('14', '14', '7032300013');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('15', '15', '7032300099');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('16', '16', '7032300023');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('17', '17', '7032300084');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('18', '18', '7032300011');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('19', '19', '7032300066');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('20', '20', '7032300096');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('21', '1', '7032300034');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('22', '2', '7032500039');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('23', '3', '7032700050');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('24', '4', '7032100027');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('25', '5', '7032300801');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('26', '6', '7032300071');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('27', '7', '8032300081');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('28', '8', '8732300054');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('29', '9', '9932300059');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('30', '10', '9732300086');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('31', '11', '9772300082');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('32', '12', '9832306042');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('33', '13', '8832356055');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('34', '14', '7732398013');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('35', '15', '8932393099');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('36', '16', '7932305623');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('37', '17', '7832303384');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('38', '18', '8032301231');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('39', '19', '9032356766');
INSERT INTO `infoway_erp`.`phone` (`ID`, `studentID`, `number`) VALUES ('40', '20', '7832356196');

