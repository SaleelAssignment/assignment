drop table student_order CASCADE CONSTRAINTS purge;
drop table  student_phone CASCADE CONSTRAINTS purge;
drop table  student_address CASCADE CONSTRAINTS purge;
drop table  faculty_phone CASCADE CONSTRAINTS purge;
drop table  student_Cards CASCADE CONSTRAINTS purge;
drop table  faculty_address CASCADE CONSTRAINTS purge;
drop table  batch_students CASCADE CONSTRAINTS purge;
drop table  course_batches CASCADE CONSTRAINTS purge;
drop table  student_qualifications CASCADE CONSTRAINTS purge;
drop table  faculty_qualifications CASCADE CONSTRAINTS purge;
drop table  course_modules CASCADE CONSTRAINTS purge;
drop table  modules CASCADE CONSTRAINTS purge;
drop table  faculty CASCADE CONSTRAINTS purge;
drop table  student CASCADE CONSTRAINTS purge;
drop table  course CASCADE CONSTRAINTS purge;
drop table  books CASCADE CONSTRAINTS purge;
drop table  newbooks CASCADE CONSTRAINTS purge;


CREATE TABLE course (
  ID INT PRIMARY KEY,
  name VARCHAR2(20) NOT NULL,
  duration INT ,
  summery long);


CREATE TABLE student (
  ID INT PRIMARY KEY,
  namefirst VARCHAR2(20) ,
  namelast VARCHAR2(20) ,
  DOB DATE ,
  emailID VARCHAR2(30) );


CREATE TABLE student_order (
  ID INT PRIMARY KEY,
  studentID INT,
  orderdate date,
  amount int,
  FOREIGN KEY(studentID) REFERENCES student(id));


CREATE TABLE student_phone (
  ID INT primary key,
  studentID INT,
  phonenumber VARCHAR2(12),
  isActive CHAR(1),
  FOREIGN KEY(studentID) REFERENCES student(id));
 
 
CREATE TABLE student_Cards (
  ID INT primary key,
  studentID INT,
  name VARCHAR2(20),
  isActive CHAR(1),
  FOREIGN KEY(studentID) REFERENCES student(id));
  
 
 CREATE TABLE student_address (
  ID INT primary key ,
  studentID INT unique not null,
  address VARCHAR2(128) unique not null,
  FOREIGN KEY(studentID) REFERENCES student(id));
    
  
CREATE TABLE faculty (
  ID INT PRIMARY KEY,
  namefirst VARCHAR2(20) ,
  namelast VARCHAR2(20) ,
  DOB DATE ,
  emailID VARCHAR2(30) );

  
CREATE TABLE faculty_phone (
  ID INT primary key,
  facultyID INT,
  phonenumber VARCHAR2(12),
  FOREIGN KEY(facultyID) REFERENCES faculty(id));
  
 
 CREATE TABLE faculty_address (
  ID INT primary key,
  facultyID INT unique not null,
  address VARCHAR2(128),
  FOREIGN KEY(facultyID) REFERENCES faculty(id));
  
  
CREATE TABLE modules (
  ID INT PRIMARY KEY,
  name VARCHAR2(30) ,
  duration INT );


CREATE TABLE course_modules (
  ID INT primary key,
  courseID INT ,
  moduleID INT ,
    FOREIGN KEY (courseID) REFERENCES course(ID),
    FOREIGN KEY (moduleID) REFERENCES modules(ID));


CREATE TABLE student_qualifications (
  ID INT PRIMARY KEY,
  studentID INT ,
  name VARCHAR2(10) ,
  college VARCHAR2(20) ,
  university VARCHAR2(30) ,
  marks VARCHAR2(10) ,
  year int ,
   FOREIGN KEY(studentID) REFERENCES student(id));

   
CREATE TABLE faculty_qualifications (
  ID INT PRIMARY KEY,
  facultyID INT ,
  name VARCHAR2(10) ,
  college VARCHAR2(20) ,
  university VARCHAR2(30) ,
  marks VARCHAR2(10) ,
  year int ,
   FOREIGN KEY(facultyID) REFERENCES faculty(id));

   
CREATE TABLE course_batches (
  ID INT PRIMARY KEY,
  name VARCHAR2(20) ,
  courseID INT ,
  starton DATE ,
  endson DATE ,
  capacity INT ,
  FOREIGN KEY (courseID) REFERENCES course (ID));


CREATE TABLE batch_students (
  ID INT primary key,
  batchID INT ,
  studentID INT ,
   FOREIGN KEY (batchID) REFERENCES course_batches (ID),
   FOREIGN KEY (studentID) REFERENCES student (ID));

CREATE TABLE books ( 
   bookID int NOT NULL, 
   bookName VARCHAR2(10),
   Type VARCHAR2(10), 
   Cost int,
   PRIMARY KEY (bookID)
 );

CREATE TABLE newbooks ( 
  bookID int NOT NULL, 
  bookName VARCHAR2(10),
  Type VARCHAR2(10), 
  Cost int,
  PRIMARY KEY (bookID)
);



INSERT INTO course VALUES ('1', 'PG-DAC', '6', 'This course is designed by CDAC');
INSERT INTO course VALUES ('2', 'DBDA', '6', 'This course is designed by CDAC');
INSERT INTO course VALUES ('3', 'Pre-DAC', '2', 'This course is designed by CDAC');
INSERT INTO course VALUES ('4', 'JAVA', '3', 'This course is designed by Infoway');
INSERT INTO course VALUES ('5', '.NET', '3', 'This course is designed by Infoway');
INSERT INTO course VALUES ('6', 'DMC', '6', 'This course is designed by CDAC');
INSERT INTO course VALUES ('7', 'DSSD', '6', 'This course is designed by CDAC');



INSERT INTO student VALUES ('1', 'saleel', 'bagde', '12-Jun-1984', 'saleel.bagde@gmail.com');
INSERT INTO student VALUES ('2', 'omkar', 'rokde', '25-Oct-1969', 'omkar.rakde@gmail.com');
INSERT INTO student VALUES ('3', 'ulka', 'joshi', '25-Oct-1970', 'ulka.joshi@gmail.com');
INSERT INTO student VALUES ('4', 'rahul', 'patil', '31-Oct-1982', 'rahul.patil@gmail.com');
INSERT INTO student VALUES ('5', 'ruhan', 'bagde', '12-Jan-1984', 'ruhan.bagde@gmail.com');
INSERT INTO student VALUES ('6', 'lala', 'prasad', '01-Dec-1980', 'lala.prasad@gmail.com');
INSERT INTO student VALUES ('7', 'sharmin', 'bagde', '14-Dec-1986', 'sharmin.bagde@gmail.com');
INSERT INTO student VALUES ('8', 'vrushali', 'bagde', '29-Dec-1984', 'vrushali.bagde@gmail.com');
INSERT INTO student VALUES ('9', 'vasant', 'khande', '26-Oct-1992', 'vasant.khande@gmail.com');
INSERT INTO student VALUES ('10', 'nitish', 'patil', '26-Oct-1990', 'nitish.patil@gmail.com');
INSERT INTO student VALUES ('11', 'neel', 'save', '30-Oct-1975', 'neel.save@gmail.com');
INSERT INTO student VALUES ('12', 'deep', 'save', '30-Nov-1986', 'deep.save@gmail.com');
INSERT INTO student VALUES ('13', 'nrupali', 'save', '01-Dec-1981', 'nrupali.save@gmail.com');
INSERT INTO student VALUES ('14', 'supriya', 'karnik', '15-Dec-1983', 'supriya.karnik@gmail.com');
INSERT INTO student VALUES ('15', 'bandish', 'karnik', '30-Dec-1987', 'bandish.karnik@gmail.com');
INSERT INTO student VALUES ('16', 'sangita', 'karnik', '01-Dec-1990', 'sangita.karnik@gmail.com');
INSERT INTO student VALUES ('17', 'sangita', 'menon', '26-Oct-1989', 'sangita.menon@gmail.com');
INSERT INTO student VALUES ('18', 'rahul', 'shah', '12-Jun-1982', 'rahul.shah@gmail.com');
INSERT INTO student VALUES ('19', 'bhavin', 'patel', '13-Nov-1983', 'bhavin.patel@gmail.com');
INSERT INTO student VALUES ('20', 'kaushal', 'patil', '30-Jul-1982', 'kaushal.patil@gmail.com');
INSERT INTO student VALUES ('21', 'pankaj', 'gandhi', '30-Jul-1982', 'pankaj.gandhi@gmail.com');
INSERT INTO student VALUES ('22', 'rajan', 'patel', '30-Jul-1982', 'rajan.patel@gmail.com');
INSERT INTO student VALUES ('23', 'bhavin', 'patel', '30-Jul-1982', 'bhavin.patel@gmail.com');
INSERT INTO student VALUES ('24', 'mukesh', 'bhavsar', '30-Jul-1982', 'mukesh.bhavsar@gmail.com');
INSERT INTO student VALUES ('25', 'dilu', 'khande', '30-Jul-1982', 'dilu.khande@gmail.com');
INSERT INTO student VALUES ('26', 'sonam', 'khan', '13-May-1972', 'sonam.khan@gmail.com');
INSERT INTO student VALUES ('27', 'rohit', 'patil', '31-Dec-1976', 'rohit.patil@gmail.com');
INSERT INTO student VALUES ('28', 'raj', 'bubber', '28-Feb-1982', 'raj.bubber@gmail.com');



INSERT INTO student_order VALUES ('1', '4', '12-Jan-2019', '2000');
INSERT INTO student_order VALUES ('2', '1', '12-Jan-2019', '2500');
INSERT INTO student_order VALUES ('3', '6', '17-Aug-2019', '150');
INSERT INTO student_order VALUES ('4', '2', '02-May-2019', '340');
INSERT INTO student_order VALUES ('5', '12', '03-May-2019', '655');
INSERT INTO student_order VALUES ('6', '12', '04-May-2019', '1000');
INSERT INTO student_order VALUES ('7', '6', '11-Nov-2019', '4000');
INSERT INTO student_order VALUES ('8', '1', '19-Jul-2019', '1270');
INSERT INTO student_order VALUES ('9', '5', '07-Apr-2019', '2000');
INSERT INTO student_order VALUES ('10', '7', '10-Oct-2019', '2500');
INSERT INTO student_order VALUES ('11', '10', '11-Nov-2019', '150');
INSERT INTO student_order VALUES ('12', '14', '21-Jul-2019', '340');
INSERT INTO student_order VALUES ('13', '13', '02-Nov-2019', '655');
INSERT INTO student_order VALUES ('14', '4', '12-Jan-2019', '1000');
INSERT INTO student_order VALUES ('15', null, '07-Apr-2019', '4000');
INSERT INTO student_order VALUES ('16', null, '10-Oct-2019', '1270');
INSERT INTO student_order VALUES ('17', null, '11-Nov-2019', '3088');
INSERT INTO student_order VALUES ('18', null, '21-Jul-2019', '1200');
INSERT INTO student_order VALUES ('19', null, '02-Nov-2019', '125');
INSERT INTO student_order VALUES ('20', null, '12-Jan-2019', '350');
INSERT INTO student_order VALUES ('21', '8',  '12-Jan-2019', '3000');
INSERT INTO student_order VALUES ('22', '10', '02-Nov-2019', '650');
INSERT INTO student_order VALUES ('23', '4', '19-Oct-2019', '700');
INSERT INTO student_order VALUES ('24', '4', '08-Aug-2019', '1400');
INSERT INTO student_order VALUES ('25', '1', '15-Jun-2019', '1999');
INSERT INTO student_order VALUES ('26', '6', '02-Feb-2019', '280');
INSERT INTO student_order VALUES ('27', '2', '21-Aug-2019', '175');
INSERT INTO student_order VALUES ('28', '12', '02-Feb-2019', '30');
INSERT INTO student_order VALUES ('29', '12', '12-Jan-2019', '190');
INSERT INTO student_order VALUES ('30', '6', '10-Jul-2019', '750');
INSERT INTO student_order VALUES ('31', '1', '12-Nov-2019', '575');
INSERT INTO student_order VALUES ('32', '5', '03-Mar-2019', '635');
INSERT INTO student_order VALUES ('33', '7', '23-Jun-2019', '930');
INSERT INTO student_order VALUES ('34', '10', '19-Jan-2019', '225');
INSERT INTO student_order VALUES ('35', '14', '10-Oct-2019', '325');
INSERT INTO student_order VALUES ('36', '13', '12-Jan-2019', '180');
INSERT INTO student_order VALUES ('37', '4', '23-Jun-2019', '500');
INSERT INTO student_order VALUES ('38', '2', '19-Jan-2019', '400');
INSERT INTO student_order VALUES ('39', '5', '10-Oct-2019', '320');
INSERT INTO student_order VALUES ('40', '8', '12-Jan-2019', '650');



INSERT INTO student_phone VALUES ('1', '1', '7032300034', '1');
INSERT INTO student_phone VALUES ('2', '2', '7032300039', '1');
INSERT INTO student_phone VALUES ('3', '3', '7032300050', '1');
INSERT INTO student_phone VALUES ('4', '4', '7032300027', '1');
INSERT INTO student_phone VALUES ('5', '5', '7032300001', '1');
INSERT INTO student_phone VALUES ('6', '6', '7032300079', '1');
INSERT INTO student_phone VALUES ('7', '7', '7032300081', '1');
INSERT INTO student_phone VALUES ('8', '8', '7032300054', '1');
INSERT INTO student_phone VALUES ('9', '9', '7032300059', '1');
INSERT INTO student_phone VALUES ('10', '10', '7032300086', '1');
INSERT INTO student_phone VALUES ('11', '11', '7032300082', '1');
INSERT INTO student_phone VALUES ('12', '12', '7032300042', '1');
INSERT INTO student_phone VALUES ('13', '13', '7032300055', '1');
INSERT INTO student_phone VALUES ('14', '14', '7032300013', '1');
INSERT INTO student_phone VALUES ('15', '15', '7032300099', '1');
INSERT INTO student_phone VALUES ('16', '16', '7032300023', '1');
INSERT INTO student_phone VALUES ('17', '17', '7032300084', '1');
INSERT INTO student_phone VALUES ('18', '18', '7032300011', '1');
INSERT INTO student_phone VALUES ('19', '19', '7032300066', '1');
INSERT INTO student_phone VALUES ('20', '20', '7032300096', '1');
INSERT INTO student_phone VALUES ('21', '1', '7132300034', '1');
INSERT INTO student_phone VALUES ('22', '2', '7132300039', '1');
INSERT INTO student_phone VALUES ('23', '3', '7132300050', '1');
INSERT INTO student_phone VALUES ('24', '4', '7132300027', '1');
INSERT INTO student_phone VALUES ('25', '5', '7032300001', '1');
INSERT INTO student_phone VALUES ('26', '6', '7132300079', '1');
INSERT INTO student_phone VALUES ('27', '7', '7132300081', '0');
INSERT INTO student_phone VALUES ('28', '8', '7132300054', '0');
INSERT INTO student_phone VALUES ('29', '9', '7132300059', '0');
INSERT INTO student_phone VALUES ('30', '10', '7132300086', '0');
INSERT INTO student_phone VALUES ('31', '11', '7132300082', '0');
INSERT INTO student_phone VALUES ('32', '12', '7132300042', '0');
INSERT INTO student_phone VALUES ('33', '13', '7132300055', '0');
INSERT INTO student_phone VALUES ('34', '13', '7132300055', '0');
INSERT INTO student_phone VALUES ('35', '13', '7132300055', '1');
INSERT INTO student_phone VALUES ('36', '6', '7133067123', '0');
INSERT INTO student_phone VALUES ('37', '21', '7156567123', '1');
INSERT INTO student_phone VALUES ('38', '22', '7156567134', '1');
INSERT INTO student_phone VALUES ('39', '23', '7156563423', '0');
INSERT INTO student_phone VALUES ('40', '24', '7156567183', '0');
INSERT INTO student_phone VALUES ('41', '25', '7146566412', '1');



INSERT INTO student_cards VALUES ('1', '1', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('2', '1', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('3', '1', 'PAN', '1');
INSERT INTO student_cards VALUES ('4', '1', 'Voter ID', '1');
INSERT INTO student_cards VALUES ('5', '1', 'Passport', '1');
INSERT INTO student_cards VALUES ('6', '1', 'Debit', '1');
INSERT INTO student_cards VALUES ('7', '1', 'Credit', '1');
INSERT INTO student_cards VALUES ('8', '2', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('9', '2', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('10', '2', 'PAN', '1');
INSERT INTO student_cards VALUES ('11', '2', 'Voter ID', '1');
INSERT INTO student_cards VALUES ('12', '2', 'Debit', '1');
INSERT INTO student_cards VALUES ('13', '3', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('14', '3', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('15', '3', 'PAN', '1');
INSERT INTO student_cards VALUES ('16', '3', 'Passport', '1');
INSERT INTO student_cards VALUES ('17', '3', 'Debit', '1');
INSERT INTO student_cards VALUES ('18', '4', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('19', '4', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('20', '4', 'PAN', '1');
INSERT INTO student_cards VALUES ('21', '4', 'Passport', '1');
INSERT INTO student_cards VALUES ('22', '4', 'Debit', '1');
INSERT INTO student_cards VALUES ('23', '4', 'Credit', '1');
INSERT INTO student_cards VALUES ('24', '5', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('25', '5', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('26', '5', 'PAN', '1');
INSERT INTO student_cards VALUES ('27', '5', 'Voter ID', '1');
INSERT INTO student_cards VALUES ('28', '5', 'Passport', '1');
INSERT INTO student_cards VALUES ('29', '5', 'Debit', '1');
INSERT INTO student_cards VALUES ('30', '5', 'Credit', '1');
INSERT INTO student_cards VALUES ('31', '6', 'PAN', '1');
INSERT INTO student_cards VALUES ('32', '6', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('33', '7', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('34', '7', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('35', '8', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('36', '8', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('37', '8', 'PAN', '1');
INSERT INTO student_cards VALUES ('38', '8', 'Voter ID', '1');
INSERT INTO student_cards VALUES ('39', '9', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('40', '9', 'PAN', '1');
INSERT INTO student_cards VALUES ('41', '9', 'Debit', '1');
INSERT INTO student_cards VALUES ('42', '9', 'Credit', '1');
INSERT INTO student_cards VALUES ('43', '10', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('44', '10', 'PAN', '1');
INSERT INTO student_cards VALUES ('45', '10', 'Passport', '1');
INSERT INTO student_cards VALUES ('46', '10', 'Voter ID', '1');
INSERT INTO student_cards VALUES ('47', '11', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('48', '12', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('49', '12', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('50', '12', 'PAN', '1');
INSERT INTO student_cards VALUES ('51', '13', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('52', '13', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('53', '13', 'PAN', '1');
INSERT INTO student_cards VALUES ('54', '13', 'Voter ID', '1');
INSERT INTO student_cards VALUES ('55', '17', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('56', '17', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('57', '17', 'PAN', '1');
INSERT INTO student_cards VALUES ('58', '17', 'Voter ID', '1');
INSERT INTO student_cards VALUES ('59', '17', 'Passport', '1');
INSERT INTO student_cards VALUES ('60', '17', 'Debit', '1');
INSERT INTO student_cards VALUES ('61', '17', 'Credit', '1');
INSERT INTO student_cards VALUES ('62', '18', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('63', '18', 'PAN', '1');
INSERT INTO student_cards VALUES ('64', '19', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('65', '19', 'PAN', '1');
INSERT INTO student_cards VALUES ('66', '19', 'Passport', '1');
INSERT INTO student_cards VALUES ('67', '20', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('68', '20', 'PAN', '1');
INSERT INTO student_cards VALUES ('69', '20', 'Passport', '1');
INSERT INTO student_cards VALUES ('70', '23', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('71', '23', 'PAN', '1');
INSERT INTO student_cards VALUES ('72', '23', 'Credit', '1');
INSERT INTO student_cards VALUES ('73', '24', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('74', '24', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('75', '24', 'PAN', '1');
INSERT INTO student_cards VALUES ('76', '24', 'Voter ID', '1');
INSERT INTO student_cards VALUES ('77', '24', 'Passport', '1');
INSERT INTO student_cards VALUES ('78', '24', 'Credit', '1');
INSERT INTO student_cards VALUES ('79', '25', 'Aadhaar', '1');
INSERT INTO student_cards VALUES ('80', '14', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('81', '15', 'PAN', '1');
INSERT INTO student_cards VALUES ('82', '16', 'Voter ID', '1');
INSERT INTO student_cards VALUES ('83', '25', 'Driving Licence', '1');
INSERT INTO student_cards VALUES ('84', '25', 'PAN', '1');
INSERT INTO student_cards VALUES ('85', '25', 'Voter ID', '1');



INSERT INTO student_address VALUES ('1', '1', '13758 Dogwood, St, Trona, CA, Los Angeles, 93562');
INSERT INTO student_address VALUES ('2', '2', '2263 Ga 17 Hwy N, Millen, GA, Atlanta, 30442');
INSERT INTO student_address VALUES ('3', '3', '409 Berry St, Louisa, KY, San Jose, 41230');
INSERT INTO student_address VALUES ('4', '4', '7720 Covington Rd, Pink Stand, TN, San Francisco, 37188');
INSERT INTO student_address VALUES ('5', '5', '15 Hempstead, St, Saugus, MA, Las Vega, 1906');
INSERT INTO student_address VALUES ('6', '6', '165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060');
INSERT INTO student_address VALUES ('7', '7', 'Po Box 83, Faith, NC, New Jersey, 28041');
INSERT INTO student_address VALUES ('8', '8', '3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313');
INSERT INTO student_address VALUES ('9', '9', 'Po Box 77, Linking Road, UK');
INSERT INTO student_address VALUES ('10', '10', '7710 Covington Rd , New State Road, New York, 37188');
INSERT INTO student_address VALUES ('11', '11', '15 Hempstead St, Saugus, MA, Boston, 1906');
INSERT INTO student_address VALUES ('12', '12', '165 Ken city, P.O. Box 942873, 50 Higuera Street, Oakland, 38060');
INSERT INTO student_address VALUES ('13', '13', 'Po Box 83, Faith, NC, null, New York, 28041');
INSERT INTO student_address VALUES ('14', '14', '808 Rocky Hill Rd, Plymouth 1993 Cross lane, Boston, 32360');
INSERT INTO student_address VALUES ('15', '15', '118 Lippitt Ave Warwick, 100 S. Main Street, Los Angeles, 3089');
INSERT INTO student_address VALUES ('16', '16', '5973 Moon Shadow Dr. Herriman, null, Atlanta, 2330');
INSERT INTO student_address VALUES ('17', '17', '13758 Dogwood St, Trona, null, San Jose, 93562');
INSERT INTO student_address VALUES ('18', '18', '2263 Ga 17 Hwy N, Millen, null, Las Vega, 30442');
INSERT INTO student_address VALUES ('19', '19', '321/vimal park, karve road, pune, 411038');
INSERT INTO student_address VALUES ('20', '20', 'Prashant Society, Kothrud, pune, 411038');
INSERT INTO student_address VALUES ('21', '21', '8 vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address VALUES ('22', '22', '9 vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address VALUES ('23', '23', '10  vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address VALUES ('24', '24', '4 vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address VALUES ('25', '25', '7 vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address VALUES ('26', '26', '19 Hempstead St, go streat, MG, Boston, 19077');
INSERT INTO student_address VALUES ('27', '27', '1699 Ken city, P.O. Box 942873, 50 Higuera Street, Oakland, 38060');
INSERT INTO student_address VALUES ('28', '28', 'Po Box 87, Faith, NC, New York, 28030');



INSERT INTO faculty  VALUES ('1', 'prachi', 'gupta', '12-Jun-1974', 'prachi.gupta@gmail.com');
INSERT INTO faculty  VALUES ('2', 'ketan', 'shukla', '25-Oct-1972', 'ketan.shukla@gmail.com');
INSERT INTO faculty  VALUES ('3', 'kiran', 'dev',    '25-Oct-1971', 'kiran.dev@gmail.com');
INSERT INTO faculty  VALUES ('4', 'parag', 'patil',  '31-Oct-1972', 'parag.patil@gmail.com');


INSERT INTO faculty_phone VALUES ('1', '1', '7032300034');
INSERT INTO faculty_phone VALUES ('2', '2', '7032300039');
INSERT INTO faculty_phone VALUES ('3', '3', '7032300050');
INSERT INTO faculty_phone VALUES ('4', '4', '7032300027');
INSERT INTO faculty_phone VALUES ('5', '1', '7032301201');
INSERT INTO faculty_phone VALUES ('6', '2', '7032303479');
INSERT INTO faculty_phone VALUES ('7', '3', '7032306781');
INSERT INTO faculty_phone VALUES ('8', '4', '7032390234');
INSERT INTO faculty_phone VALUES ('9', '3', '7133067123');



INSERT INTO faculty_address VALUES ('1', '1', '165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060');
INSERT INTO faculty_address VALUES ('2', '2', 'Po Box 83, Faith, NC, New Jersey, 28041');
INSERT INTO faculty_address VALUES ('3', '3', '3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313');
INSERT INTO faculty_address VALUES ('4', '4', 'Po Box 77, Linking Road, UK');



INSERT INTO modules VALUES ('1', 'Oracle', '1');
INSERT INTO modules VALUES ('2', 'PHP', '1');
INSERT INTO modules VALUES ('3', 'MySQL', '1');
INSERT INTO modules VALUES ('4', 'Node', '1');
INSERT INTO modules VALUES ('5', 'C++', '1');
INSERT INTO modules VALUES ('6', 'C', '1');
INSERT INTO modules VALUES ('7', 'JAVA1', '2');
INSERT INTO modules VALUES ('8', 'JAVA2', '2');
INSERT INTO modules VALUES ('9', 'MongoDB', '1');
INSERT INTO modules VALUES ('10', 'NET', '2');
INSERT INTO modules VALUES ('11', 'Hive', '1');
INSERT INTO modules VALUES ('12', 'Python', '1');
INSERT INTO modules VALUES ('13', 'Aptitude', '1');
INSERT INTO modules VALUES ('14', 'OOPs with C++ Programming', '6');
INSERT INTO modules VALUES ('15', 'Data Structures', '6');
INSERT INTO modules VALUES ('16', 'OS Concepts', '6');
INSERT INTO modules VALUES ('17', 'iOS Programming', '6');



INSERT INTO course_modules VALUES ('1', '1', '1');
INSERT INTO course_modules VALUES ('2', '1', '2');
INSERT INTO course_modules VALUES ('3', '1', '3');
INSERT INTO course_modules VALUES ('4', '1', '4');
INSERT INTO course_modules VALUES ('5', '1', '5');
INSERT INTO course_modules VALUES ('6', '1', '6');
INSERT INTO course_modules VALUES ('7', '1', '7');
INSERT INTO course_modules VALUES ('8', '1', '8');
INSERT INTO course_modules VALUES ('9', '1', '9');
INSERT INTO course_modules VALUES ('10', '2', '1');
INSERT INTO course_modules VALUES ('11', '2', '2');
INSERT INTO course_modules VALUES ('12', '2', '3');
INSERT INTO course_modules VALUES ('13', '2', '11');
INSERT INTO course_modules VALUES ('14', '2', '12');
INSERT INTO course_modules VALUES ('15', '2', '9');
INSERT INTO course_modules VALUES ('16', '3', '13');
INSERT INTO course_modules VALUES ('17', '3', '5');
INSERT INTO course_modules VALUES ('18', '3', '6');
INSERT INTO course_modules VALUES ('19', '4', '1');
INSERT INTO course_modules VALUES ('20', '4', '7');
INSERT INTO course_modules VALUES ('21', '4', '8');
INSERT INTO course_modules VALUES ('22', '5', '1');
INSERT INTO course_modules VALUES ('23', '5', '7');
INSERT INTO course_modules VALUES ('24', '5', '8');
INSERT INTO course_modules VALUES ('25', '6', '14');
INSERT INTO course_modules VALUES ('26', '6', '15');
INSERT INTO course_modules VALUES ('27', '6', '16');
INSERT INTO course_modules VALUES ('28', '6', '17');



INSERT INTO course_batches VALUES ('1', 'Batch1', '1', '01-Feb-2016', '31-Aug-2016', '80');
INSERT INTO course_batches VALUES ('2', 'Batch2', '2', '01-Feb-2016', '31-Aug-2016', '30');
INSERT INTO course_batches VALUES ('3', 'Batch3', '3', '01-Feb-2016', '31-Mar-2016', '35');
INSERT INTO course_batches VALUES ('4', 'Batch4', '4', '01-Jul-2016', '30-Sep-2016', '25');
INSERT INTO course_batches VALUES ('5', 'Batch5', '5', '01-Jul-2016', '30-Sep-2016', '25');
INSERT INTO course_batches VALUES ('6', 'Batch6', '1', '01-Feb-2015', '31-Aug-2015', '80');
INSERT INTO course_batches VALUES ('7', 'Batch7', '2', '01-Feb-2015', '31-Aug-2015', '30');
INSERT INTO course_batches VALUES ('8', 'Batch8', '3', '01-Apr-2017', '31-May-2017', '30');
INSERT INTO course_batches VALUES ('9', 'Batch9', '4', '01-Jul-2018', '30-Sep-2018', '25');
INSERT INTO course_batches VALUES ('10', 'Batch10', '5', '01-Sep-2018', '30-Nov-2018', '25');
INSERT INTO course_batches VALUES ('11', 'Batch11', '1', '01-Aug-2017', '28-Feb-2018', '80');
INSERT INTO course_batches VALUES ('12', 'Batch12', '2', '01-Aug-2017', '28-Feb-2018', '30');
INSERT INTO course_batches VALUES ('13', 'Batch13', '3', '01-Jul-2017', '31-Aug-2017', '30');
INSERT INTO course_batches VALUES ('14', 'Batch14', '4', '01-May-2018', '31-Jul-2018', '25');
INSERT INTO course_batches VALUES ('15', 'Batch15', '5', '01-Jun-2018', '30-Aug-2018', '25');
INSERT INTO course_batches VALUES ('16', 'Batch16', '1', '01-Aug-2014', '28-Feb-2015', '80');
INSERT INTO course_batches VALUES ('17', 'Batch17', '2', '01-Aug-2014', '28-Feb-2015', '30');
INSERT INTO course_batches VALUES ('18', 'Batch18', '3', '01-Mar-2018', '30-Apr-2018', '35');
INSERT INTO course_batches VALUES ('19', 'Batch19', '4', '01-Jan-2019', '30-Mar-2019', '25');
INSERT INTO course_batches VALUES ('20', 'Batch20', '5', '01-Dec-2018', '28-Feb-2019', '25');
INSERT INTO course_batches VALUES ('21', 'Batch21', '1', '01-Aug-2015', '28-Feb-2016', '80');
INSERT INTO course_batches VALUES ('22', 'Batch22', '2', '01-Aug-2015', '28-Feb-2016', '30');
INSERT INTO course_batches VALUES ('23', 'Batch23', '3', '01-Mar-2019', '30-Apr-2019', '40');
INSERT INTO course_batches VALUES ('24', 'Batch24', '4', '01-Jan-2019', '30-Mar-2019', '30');
INSERT INTO course_batches VALUES ('25', 'Batch25', '6', '01-Jan-2019', '30-Mar-2019', '30');



INSERT INTO batch_students VALUES ('1', '1', '1');
INSERT INTO batch_students VALUES ('2', '7', '5');
INSERT INTO batch_students VALUES ('3', '3', '4');
INSERT INTO batch_students VALUES ('4', '6', '3');
INSERT INTO batch_students VALUES ('5', '10', '6');
INSERT INTO batch_students VALUES ('6', '17', '8');
INSERT INTO batch_students VALUES ('7', '20', '12');
INSERT INTO batch_students VALUES ('8', '1', '7');
INSERT INTO batch_students VALUES ('9', '2', '12');
INSERT INTO batch_students VALUES ('10', '4', '15');
INSERT INTO batch_students VALUES ('11', '5', '20');
INSERT INTO batch_students VALUES ('12', '6', '5');
INSERT INTO batch_students VALUES ('13', '7', '3');
INSERT INTO batch_students VALUES ('14', '1', '20');
INSERT INTO batch_students VALUES ('15', '2', '10');
INSERT INTO batch_students VALUES ('16', '3', '5');
INSERT INTO batch_students VALUES ('17', '4', '6');
INSERT INTO batch_students VALUES ('18', '5', '3');
INSERT INTO batch_students VALUES ('19', '6', '1');
INSERT INTO batch_students VALUES ('20', '12', '10');
INSERT INTO batch_students VALUES ('21', '15', '17');
INSERT INTO batch_students VALUES ('22', '15', '18');
INSERT INTO batch_students VALUES ('23', '16', '18');
INSERT INTO batch_students VALUES ('24', '17', '12');
INSERT INTO batch_students VALUES ('25', '3', '20');
INSERT INTO batch_students VALUES ('26', '4', '17');



INSERT INTO student_qualifications VALUES ('1', '1', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications VALUES ('2', '1', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications VALUES ('3', '1', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications VALUES ('4', '2', '10', 'Alaska', 'University of Chicago', '68', '2013');
INSERT INTO student_qualifications VALUES ('5', '2', '12', 'New York', 'Yale University', '56', '2015');
INSERT INTO student_qualifications VALUES ('6', '2', 'B.Com', 'Arkansas', 'Yale University', '64', '2019');
INSERT INTO student_qualifications VALUES ('7', '3', '10', 'Arizona', 'Yale University', '75', '2011');
INSERT INTO student_qualifications VALUES ('8', '3', '12', 'California', 'California University', '86', '2013');
INSERT INTO student_qualifications VALUES ('9', '3', 'BE', 'Florida', 'University of Florida', '67', '2017');
INSERT INTO student_qualifications VALUES ('10', '4', '10', 'Idaho', 'Pennsylvania University', '58', '2010');
INSERT INTO student_qualifications VALUES ('11', '4', '12', 'New Hampshire', 'Yale University', '97', '2012');
INSERT INTO student_qualifications VALUES ('12', '4', 'M.Com.', 'Montana', 'Columbia University', '77', '2016');
INSERT INTO student_qualifications VALUES ('13', '5', '10', 'Alabama', 'Yale University', '56', '2008');
INSERT INTO student_qualifications VALUES ('14', '5', '12', 'Michigan', 'University of Michigan', '57', '2010');
INSERT INTO student_qualifications VALUES ('15', '5', 'M.Com.', 'Oklahoma', 'Stanford University', '86', '2014');
INSERT INTO student_qualifications VALUES ('16', '6', '10', 'Mississippi', 'Harvard University', '56', '2009');
INSERT INTO student_qualifications VALUES ('17', '6', '12', 'Alabama', 'Harvard University', '76', '2011');
INSERT INTO student_qualifications VALUES ('18', '6', 'BE', 'Indiana', 'University of Chicago', '87', '2015');
INSERT INTO student_qualifications VALUES ('19', '7', '10', 'Ohio', 'University of Ohio', '87', '2011');
INSERT INTO student_qualifications VALUES ('20', '7', '12', 'Iowa', 'Stanford University', '78', '2013');
INSERT INTO student_qualifications VALUES ('21', '7', 'BE', 'Kentucky', 'Harvard University', '97', '2017');
INSERT INTO student_qualifications VALUES ('22', '8', '10', 'Maryland', 'University Maryland', '56', '2010');
INSERT INTO student_qualifications VALUES ('23', '8', '12', 'Alabama', 'California University', '60', '2012');
INSERT INTO student_qualifications VALUES ('24', '8', 'M.Com.', 'Virginia', 'University of Florida', '87', '2016');
INSERT INTO student_qualifications VALUES ('25', '9', '10', 'Maine', 'Pennsylvania University', '98', '2012');
INSERT INTO student_qualifications VALUES ('26', '9', '12', 'Vermont', 'Yale University', '67', '2014');
INSERT INTO student_qualifications VALUES ('27', '9', 'BE', 'Kansas', 'Columbia University', '87', '2018');
INSERT INTO student_qualifications VALUES ('28', '10', '10', 'Texas', 'Yale University', '65', '2012');
INSERT INTO student_qualifications VALUES ('29', '10', '12', 'Oregon', 'University of Michigan', '76', '2014');
INSERT INTO student_qualifications VALUES ('30', '10', 'M.Com.', 'New Mexico', 'California University', '61', '2018');
INSERT INTO student_qualifications VALUES ('31', '11', '10', 'Nevada', 'University of Florida', '62', '2011');
INSERT INTO student_qualifications VALUES ('32', '11', '12', 'Indiana', 'Pennsylvania University', '63', '2013');
INSERT INTO student_qualifications VALUES ('33', '11', 'M.Com.', 'Ohio', 'University of Ohio', '56', '2017');
INSERT INTO student_qualifications VALUES ('34', '12', '10', 'New Hampshire', 'Yale University', '75', '2010');
INSERT INTO student_qualifications VALUES ('35', '12', '12', 'Montana', 'Stanford University', '30', '2012');
INSERT INTO student_qualifications VALUES ('36', '12', 'B.Com.', 'West Virginia', 'Harvard University', '50', '2016');
INSERT INTO student_qualifications VALUES ('37', '13', '10', 'Virginia', 'Harvard University', '67', '2012');
INSERT INTO student_qualifications VALUES ('38', '13', '12', 'Maine', 'University of Chicago', '78', '2014');
INSERT INTO student_qualifications VALUES ('39', '13', 'BE', 'Texas', 'University of Florida', '68', '2018');
INSERT INTO student_qualifications VALUES ('40', '14', '10', 'Oregon', 'University of Florida', '67', '2013');
INSERT INTO student_qualifications VALUES ('41', '14', '12', 'Florida', 'University of Florida', '87', '2015');
INSERT INTO student_qualifications VALUES ('42', '14', 'BE', 'Idaho', 'Yale University', '57', '2019');
INSERT INTO student_qualifications VALUES ('43', '15', '10', 'New Hampshire', 'California University', '96', '2011');
INSERT INTO student_qualifications VALUES ('44', '15', '12', 'Montana', 'University of Florida', '56', '2013');
INSERT INTO student_qualifications VALUES ('45', '15', 'BE', 'Alabama', 'Pennsylvania University', '65', '2017');
INSERT INTO student_qualifications VALUES ('46', '16', '10', 'Michigan', 'University of Michigan', '76', '2012');
INSERT INTO student_qualifications VALUES ('47', '16', '12', 'Oklahoma', 'Columbia University', '56', '2014');
INSERT INTO student_qualifications VALUES ('48', '16', 'BE', 'Mississippi', 'University of Michigan', '76', '2018');
INSERT INTO student_qualifications VALUES ('49', '17', '10', 'Alabama', 'University of Michigan', '88', '2013');
INSERT INTO student_qualifications VALUES ('50', '17', '12', 'Indiana', 'University of Michigan', '76', '2015');
INSERT INTO student_qualifications VALUES ('51', '17', 'BE', 'Ohio', 'University of Ohio', '68', '2019');
INSERT INTO student_qualifications VALUES ('52', '18', '10', 'Iowa', 'Stanford University', '86', '2011');
INSERT INTO student_qualifications VALUES ('53', '18', '12', 'Kentucky', 'Harvard University', '57', '2013');
INSERT INTO student_qualifications VALUES ('54', '18', 'BE', 'Maryland', 'Harvard University', '75', '2017');
INSERT INTO student_qualifications VALUES ('55', '19', '10', 'Alabama', 'University of Chicago', '69', '2013');
INSERT INTO student_qualifications VALUES ('56', '19', '12', 'Virginia', 'California University', '60', '2015');
INSERT INTO student_qualifications VALUES ('57', '19', 'BE', 'Maine', 'University of Florida', '61', '2019');
INSERT INTO student_qualifications VALUES ('58', '20', '10', 'Vermont', 'Pennsylvania University', '72', '2013');
INSERT INTO student_qualifications VALUES ('59', '20', '12', 'Iowa', 'Yale University', '83', '2015');
INSERT INTO student_qualifications VALUES ('60', '20', 'BE', 'Maryland', 'Columbia University', '72', '2019');
INSERT INTO student_qualifications VALUES ('61', '21', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications VALUES ('62', '21', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications VALUES ('63', '21', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications VALUES ('64', '22', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications VALUES ('65', '22', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications VALUES ('66', '22', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications VALUES ('67', '23', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications VALUES ('68', '23', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications VALUES ('69', '23', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications VALUES ('70', '24', '10', 'Ohio', 'University of Ohio', '87', '2011');
INSERT INTO student_qualifications VALUES ('71', '24', '12', 'Iowa', 'Stanford University', '78', '2013');
INSERT INTO student_qualifications VALUES ('72', '24', 'BE', 'Kentucky', 'Harvard University', '97', '2017');
INSERT INTO student_qualifications VALUES ('73', '25', '10', 'Ohio', 'University of Ohio', '87', '2011');
INSERT INTO student_qualifications VALUES ('74', '25', '12', 'Iowa', 'Stanford University', '78', '2013');
INSERT INTO student_qualifications VALUES ('75', '25', 'BE', 'Kentucky', 'Harvard University', '97', '2017');
INSERT INTO student_qualifications VALUES ('76', '26', '10', 'Iowa', 'Stanford University', '56', '1994');
INSERT INTO student_qualifications VALUES ('77', '26', 'DIP', 'Kentucky', 'Harvard University', '67', '1996');
INSERT INTO student_qualifications VALUES ('78', '26', 'BE', 'Maryland', 'Harvard University', '68', '2000');
INSERT INTO student_qualifications VALUES ('79', '27', '10', 'Alabama', 'University of Chicago', '50', '1997');
INSERT INTO student_qualifications VALUES ('80', '27', '12', 'Virginia', 'California University', '55', '1999');
INSERT INTO student_qualifications VALUES ('81', '27', 'DIP', 'Maine', 'University of Florida', '60', '2003');
INSERT INTO student_qualifications VALUES ('82', '27', 'BE', 'Vermont', 'Pennsylvania University', '62', '2006');
INSERT INTO student_qualifications VALUES ('83', '28', '10', 'Iowa', 'Yale University', '65', '2004');
INSERT INTO student_qualifications VALUES ('84', '28', '12', 'Maryland', 'Columbia University', '68', '2006');
INSERT INTO student_qualifications VALUES ('85', '28', 'MCA', 'Alaska', 'Harvard University', '64', '2009');



INSERT INTO faculty_qualifications VALUES ('1', '1', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO faculty_qualifications VALUES ('2', '1', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO faculty_qualifications VALUES ('3', '1', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO faculty_qualifications VALUES ('4', '2', '10', 'Alaska', 'University of Chicago', '68', '2013');
INSERT INTO faculty_qualifications VALUES ('5', '2', '12', 'New York', 'Yale University', '56', '2015');
INSERT INTO faculty_qualifications VALUES ('6', '2', 'BE', 'Arkansas', 'Yale University', '64', '2019');
INSERT INTO faculty_qualifications VALUES ('7', '3', '10', 'Arizona', 'Yale University', '75', '2011');
INSERT INTO faculty_qualifications VALUES ('8', '3', '12', 'California', 'California University', '86', '2013');
INSERT INTO faculty_qualifications VALUES ('9', '3', 'BE', 'Florida', 'University of Florida', '67', '2017');
INSERT INTO faculty_qualifications VALUES ('10', '4', '10', 'Idaho', 'Pennsylvania University', '58', '2010');
INSERT INTO faculty_qualifications VALUES ('11', '4', '12', 'New Hampshire', 'Yale University', '97', '2012');
INSERT INTO faculty_qualifications VALUES ('12', '4', 'BE', 'Montana', 'Columbia University', '77', '2016');


INSERT INTO books VALUES (1, 'C', 'PDF File', 1200);
INSERT INTO books VALUES (2, 'C++', 'Word File', 1000);
INSERT INTO books VALUES (3, 'DS', 'Hardcover', 950);
INSERT INTO books VALUES (4, 'MySQL', 'Paperback', 1400);
INSERT INTO books VALUES (5, 'OSC', 'Paperback', 1225);
INSERT INTO books VALUES (6, 'HTML', 'PDF File', 650);
INSERT INTO books VALUES (7, 'JavaScript', 'Paperback', 700);
INSERT INTO books VALUES (8, 'ASDM', 'PDF File', 500);
INSERT INTO books VALUES (9, '.NET', 'Hardcover', 2500);
INSERT INTO books VALUES (10, 'Core Java', 'PDF File', 1500);
INSERT INTO books VALUES (11, 'Adv. Java', 'Hardcover', 1800);



INSERT INTO newbooks VALUES (1, 'Oracle', 'PDF File', 1200);
INSERT INTO newbooks VALUES (2, 'hBase', 'Word File', 1000);
INSERT INTO newbooks VALUES (3, 'Node', 'Hardcover', 950);
INSERT INTO newbooks VALUES (4, 'Pig', 'Paperback', 1400);
INSERT INTO newbooks VALUES (5, 'Python', 'Paperback', 1225);
INSERT INTO newbooks VALUES (6, 'Hadoop', 'PDF File', 650);
INSERT INTO newbooks VALUES (7, 'JavaScript', 'Paperback', 700);
INSERT INTO newbooks VALUES (8, 'ASDM', 'PDF File', 500);
INSERT INTO newbooks VALUES (9, '.NET', 'Hardcover', 2500);
INSERT INTO newbooks VALUES (10, 'Core Java', 'PDF File', 1500);
INSERT INTO newbooks VALUES (11, 'Adv. Java', 'Hardcover', 1800);