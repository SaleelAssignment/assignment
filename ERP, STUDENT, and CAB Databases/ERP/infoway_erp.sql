drop table if exists region;
drop table if exists products;
drop table if exists department;
drop table if exists employee;

CREATE TABLE `employee` (
  `ID` INT NULL,
  `namefirst` VARCHAR(45) NULL,
  `namelast` VARCHAR(45) NULL,
  `DOB` DATE NULL,
  `address` VARCHAR(128) NULL,
  `mobile` VARCHAR(10) NULL,
  `emailID` VARCHAR(128) NULL);

CREATE TABLE `department` (
  `ID` INT NULL,
  `name` VARCHAR(45) NULL,
  `phone` VARCHAR(10) NULL);


CREATE TABLE `products` (
  `ID` INT NULL,
  `name` VARCHAR(45) NULL,
  `manufacturer` VARCHAR(45) NULL);


CREATE TABLE `region` (
  `ID` INT NULL,
  `name` VARCHAR(45) NULL);

  
  
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('1', 'Denis', 'Murphy', '1964-06-12', '13758 Dogwood, St, Trona, CA, Los Angeles, 93562', '7032300034', 'denis@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('2', 'Jenny', 'Ross', '1964-10-25', '2263 Ga 17 Hwy N, Millen, GA, Atlanta, 30442', '7032300039', 'jenny@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('3', 'David', 'Ross', '1964-10-25', '409 Berry St, Louisa, KY, San Jose, 41230', '7032300050', 'david@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('4', 'Fred', '1965-10-31', '7720 Covington Rd, Pink Stand, TN, San Francisco, 37188', '7032300027', 'fred@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('5', 'Helen', 'Taylor', '1965-01-12', '15 Hempstead, St, Saugus, MA, Las Vega, 1906', '7032300001', 'helen@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('6', 'Rosaleen', 'Smith', '1965-12-01', '165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060', '7032300079', 'rosaleen@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('7', 'Kent', 'Clark', '1960-12-14', 'Po Box 83, Faith, NC, New Jersey, 28041', '7032300081', 'kent@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('8', 'Sharon', 'Allen', '1960-12-29', '3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313', '7032300054', 'sharon@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('9', 'Stacy', 'Ward', '1982-10-26', '1615 Town Hall   , Oakland, TN, Oakland, 38060', '7032300059', 'stacy@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('10', 'Betty', 'Jones', '1983-10-26', '7710 Covington Rd , New State Road, New York, 37188', '7032300086', 'betty@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('11', 'Philip', 'Martin', '1984-10-30', '15 Hempstead St, Saugus, MA, Boston, 1906', '7032300082', 'philip@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('12', 'Lisa', 'Blake', '1984-11-30', '165 Ken city, P.O. Box 942873, 50 Higuera Street, Oakland, 38060', '7032300042', 'lisa@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('13', 'David', 'Bell', '1985-12-01', 'Po Box 83, Faith, NC, null, New York, 28041', '7032300055', 'david@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('14', 'Peter', 'Anderson', '1986-12-15', '808 Rocky Hill Rd, Plymouth 1993 Cross lane, Boston, 32360', '7032300013', 'peter@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('15', 'Julia', 'Clark', '1987-12-30', '118 Lippitt Ave Warwick, 100 S. Main Street, Los Angeles, 12889', '7032300099', 'julia@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('16', 'Alexander', 'Scott', '1965-12-01', '5973 Moon Shadow Dr. Herriman, null, Atlanta, 2345', '7032300023', 'alexander@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('17', 'Emma', 'Forster', '1982-10-26', '13758 Dogwood St, Trona, null, San Jose, 93562', '7032300084', 'emma@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('18', 'Kerr', 'King', '1964-06-12', '2263 Ga 17 Hwy N, Millen, null, Las Vega, 30442', '7032300011', 'kerr@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('19', 'kalyani', 'mane', '1963-11-13', '321/vimal park, karve road, pune, 411038', '7032300066', 'kalyani@gmail.com');
INSERT INTO `employee` (`ID`, `namefirst`, `namelast`, `DOB`, `address`, `mobile`, `emailID`) VALUES ('20', 'Megha', 'Joshi', '1962-07-30', 'Prashant Society, Kothrud, pune, 411038', '7032300096', 'megha@gmail.com');



INSERT INTO `department` (`ID`, `name`, `phone`) VALUES ('10', 'ACCOUNTING', '9850884556');
INSERT INTO `department` (`ID`, `name`, `phone`) VALUES ('20', 'PURCHASE', '7070675410');
INSERT INTO `department` (`ID`, `name`, `phone`) VALUES ('30', 'SALES', '9790771220');
INSERT INTO `department` (`ID`, `name`, `phone`) VALUES ('40', 'MIS', '8080118552');



INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('1', 'Salt', 'TATA Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('2', 'Scooters', 'Bajaj Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('3', 'Internel', 'Reliance Industries');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('4', 'Power', 'Adani Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('5', 'Fertilizer', 'Gujarat Exports Ltd.');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('6', 'Tempo', 'Bajaj Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('7', 'Motorcycle', 'Bajaj Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('8', 'Tea', 'TATA Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('9', 'Coffee', 'TATA Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('10', 'Shirts', 'Reliance Industries');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('11', 'Watches', 'TATA Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('12', 'Fresh', 'Reliance Industries');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('13', 'Auto', 'Bajaj Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('14', 'Electricity', 'Adani Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('15', 'Electricity', 'TATA Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('16', 'Oil', 'Gujarat Exports Ltd.');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('17', 'Steel', 'TATA Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('18', 'Petrol', 'Gujarat Exports Ltd.');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('19', 'Ports', 'Adani Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('20', 'Trucks', 'TATA Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('21', 'Hotels', 'TATA Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('22', 'Sky', 'TATA Groups');
INSERT INTO `products` (`ID`, `name`, `manufacturer`) VALUES ('23', 'IT', 'TATA Groups');



INSERT INTO `region` (`ID`, `name`) VALUES ('1', 'North');
INSERT INTO `region` (`ID`, `name`) VALUES ('2', 'South');
INSERT INTO `region` (`ID`, `name`) VALUES ('3', 'East');
INSERT INTO `region` (`ID`, `name`) VALUES ('4', 'West');



