drop table student_phone CASCADE CONSTRAINTS purge;
drop table  student_address CASCADE CONSTRAINTS purge;
drop table  faculty_phone CASCADE CONSTRAINTS purge;
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


CREATE TABLE course (
  ID INT PRIMARY KEY,
  name varchar2(45) NOT NULL,
  duration INT NULL,
  summery varchar2(1024) NULL);


CREATE TABLE student (
  ID INT PRIMARY KEY,
  namefirst varchar2(45) NULL,
  namelast varchar2(45) NULL,
  DOB DATE NULL,
  emailID varchar2(128) NULL);

  
CREATE TABLE student_phone (
  ID INT primary key,
  studentID INT,
  phonenumber varchar2(10),
  FOREIGN KEY(studentID) REFERENCES student(id));
 
 
 
 CREATE TABLE student_address (
  ID INT primary key ,
  studentID INT unique not null,
  address varchar2(128) unique not null,
  FOREIGN KEY(studentID) REFERENCES student(id));
  
    
CREATE TABLE faculty (
  ID INT PRIMARY KEY,
  namefirst varchar2(45) NULL,
  namelast varchar2(45) NULL,
  DOB DATE NULL,
  emailID varchar2(128) NULL);

  
CREATE TABLE faculty_phone (
  ID INT primary key,
  facultyID INT,
  phonenumber varchar2(10),
  FOREIGN KEY(facultyID) REFERENCES faculty(id));
  
 
 CREATE TABLE faculty_address (
  ID INT primary key,
  facultyID INT unique not null,
  address varchar2(128),
  FOREIGN KEY(facultyID) REFERENCES faculty(id));
  
  
CREATE TABLE modules (
  ID INT PRIMARY KEY,
  name varchar2(128) NULL,
  duration INT NULL);


CREATE TABLE course_modules (
  ID INT primary key,
  courseID INT ,
  moduleID INT ,
    FOREIGN KEY (courseID) REFERENCES course(ID),
    FOREIGN KEY (moduleID) REFERENCES modules(ID));


CREATE TABLE student_qualifications (
  ID INT PRIMARY KEY,
  studentID INT NULL,
  name varchar2(128) NULL,
  college varchar2(128) NULL,
  university varchar2(128) NULL,
  marks varchar2(45) NULL,
  year int NULL,
   FOREIGN KEY(studentID) REFERENCES student(id));

   
CREATE TABLE faculty_qualifications (
  ID INT PRIMARY KEY,
  facultyID INT NULL,
  name varchar2(128) NULL,
  college varchar2(128) NULL,
  university varchar2(128) NULL,
  marks varchar2(45) NULL,
  year int NULL,
   FOREIGN KEY(facultyID) REFERENCES faculty(id));

   
CREATE TABLE course_batches (
  ID INT PRIMARY KEY,
  name varchar2(45) NULL,
  courseID INT NULL,
  starton DATE NULL,
  endson DATE NULL,
  capacity INT NULL,
  FOREIGN KEY (courseID) REFERENCES course (ID));


CREATE TABLE batch_students (
  ID INT primary key,
  batchID INT NULL,
  studentID INT NULL,
   FOREIGN KEY (batchID) REFERENCES course_batches (ID),
   FOREIGN KEY (studentID) REFERENCES student (ID));

   
INSERT INTO course (ID, name, duration, summery) VALUES ('1', 'PG-DAC', '6', 'This course is designed by CDAC');
INSERT INTO course (ID, name, duration, summery) VALUES ('2', 'DBDA', '6', 'This course is designed by CDAC');
INSERT INTO course (ID, name, duration, summery) VALUES ('3', 'Pre-DAC', '2', 'This course is designed by CDAC');
INSERT INTO course (ID, name, duration, summery) VALUES ('4', 'JAVA', '3', 'This course is designed by Infoway');
INSERT INTO course (ID, name, duration, summery) VALUES ('5', '.NET', '3', 'This course is designed by Infoway');
INSERT INTO course (ID, name, duration, summery) VALUES ('6', 'DMC', '6', 'This course is designed by CDAC');
INSERT INTO course (ID, name, duration, summery) VALUES ('7', 'DSSD', '6', 'This course is designed by CDAC');





INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('1', 'saleel', 'bagde','12-Jun-1984', 'saleel.bagde@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('2', 'omkar', 'rakde', '25-Oct-1969', 'omkar.rakde@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('3', 'ulka', 'joshi', '25-Oct-1970', 'ulka.joshi@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('4', 'rahul', 'patil', '31-Oct-1982', 'rahul.patil@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('5', 'ruhan', 'bagde', '12-Jan-1984', 'ruhan.bagde@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('6', 'lala', 'prasad', '01-Dec-1980', 'lala.prasad@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('7', 'sharmin', 'bagde', '14-Dec-1986', 'sharmin.bagde@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('8', 'vrushali', 'bagde', '29-Dec-1984', 'vrushali.bagde@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('9', 'vasant', 'khande', '26-Oct-1992', 'vasant.khande@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('10', 'nitish', 'patil', '26-Oct-1990', 'nitish.patil@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('11', 'neel', 'save', '30-Oct-1975', 'neel.save@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('12', 'deep', 'save', '30-Nov-1986', 'deep.save@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('13', 'nrupali', 'save', '01-Dec-1981', 'nrupali.save@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('14', 'supriya', 'karnik', '15-Dec-1983', 'supriya.karnik@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('15', 'bandish', 'karnik', '30-Dec-1987', 'bandish.karnik@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('16', 'sangita', 'karnik', '01-Dec-1990', 'sangita.karnik@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('17', 'sangita', 'menon', '26-Oct-1989', 'sangita.menon@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('18', 'rahul', 'shah', '12-Jun-1982', 'rahul.shah@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('19', 'bhavin', 'patel', '13-Nov-1983', 'bhavin.patel@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('20', 'kaushal', 'patil', '30-Jul-1982', 'kaushal.patil@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('21', 'pankaj', 'gandhi', '30-Jul-1982', 'pankaj.gandhi@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('22', 'rajan', 'patel', '30-Jul-1982', 'rajan.patel@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('23', 'bhavin', 'patel', '30-Jul-1982', 'bhavin.patel@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('24', 'mukesh', 'bhavsar', '30-Jul-1982', 'mukesh.bhavsar@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('25', 'dilu', 'khande', '30-Jul-1982', 'dilu.khande@gmail.com');






INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('1', '1', '7032300034');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('2', '2', '7032300039');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('3', '3', '7032300050');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('4', '4', '7032300027');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('5', '5', '7032300801');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('6', '6', '7032300079');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('7', '7', '7032300081');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('8', '8', '7032300054');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('9', '9', '7032300059');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('10', '10', '7032300086');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('11', '11', '7032300082');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('12', '12', '7032300042');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('13', '13', '7032300055');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('14', '14', '7032300013');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('15', '15', '7032300099');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('16', '16', '7032300023');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('17', '17', '7032300084');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('18', '18', '7032300011');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('19', '19', '7032300066');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('20', '20', '7032300096');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('21', '1', '7132300034');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('22', '2', '7132300039');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('23', '3', '7132300050');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('24', '4', '7132300027');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('25', '5', '7032300001');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('26', '6', '7132300079');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('27', '7', '7132300081');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('28', '8', '7132300054');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('29', '9', '7132300059');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('30', '10', '7132300086');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('31', '11', '7132300082');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('32', '12', '7132300042');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('33', '13', '7132300055');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('34', '13', '7132376055');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('35', '13', '7132307055');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('36', '6', '7134567123');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('37', '21', '7156567123');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('38', '22', '7156567134');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('39', '23', '7156563423');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('40', '24', '7156567183');
INSERT INTO student_phone (ID, studentID, phonenumber) VALUES ('41', '25', '7146566412');





INSERT INTO student_address (ID, studentID, address) VALUES ('1', '1', '13758 Dogwood, St, Trona, CA, Los Angeles, 93562');
INSERT INTO student_address (ID, studentID, address) VALUES ('2', '2', '2263 Ga 17 Hwy N, Millen, GA, Atlanta, 30442');
INSERT INTO student_address (ID, studentID, address) VALUES ('3', '3', '409 Berry St, Louisa, KY, San Jose, 41230');
INSERT INTO student_address (ID, studentID, address) VALUES ('4', '4', '7720 Covington Rd, Pink Stand, TN, San Francisco, 37188');
INSERT INTO student_address (ID, studentID, address) VALUES ('5', '5', '15 Hempstead, St, Saugus, MA, Las Vega, 1906');
INSERT INTO student_address (ID, studentID, address) VALUES ('6', '6', '165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060');
INSERT INTO student_address (ID, studentID, address) VALUES ('7', '7', 'Po Box 83, Faith, NC, New Jersey, 28041');
INSERT INTO student_address (ID, studentID, address) VALUES ('8', '8', '3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313');
INSERT INTO student_address (ID, studentID, address) VALUES ('9', '9', 'Po Box 77, Linking Road, UK');
INSERT INTO student_address (ID, studentID, address) VALUES ('10', '10', '7710 Covington Rd , New State Road, New York, 37188');
INSERT INTO student_address (ID, studentID, address) VALUES ('11', '11', '15 Hempstead St, Saugus, MA, Boston, 1906');
INSERT INTO student_address (ID, studentID, address) VALUES ('12', '12', '165 Ken city, P.O. Box 942873, 50 Higuera Street, Oakland, 38060');
INSERT INTO student_address (ID, studentID, address) VALUES ('13', '13', 'Po Box 83, Faith, NC, null, New York, 28041');
INSERT INTO student_address (ID, studentID, address) VALUES ('14', '14', '808 Rocky Hill Rd, Plymouth 1993 Cross lane, Boston, 32360');
INSERT INTO student_address (ID, studentID, address) VALUES ('15', '15', '118 Lippitt Ave Warwick, 100 S. Main Street, Los Angeles, 12889');
INSERT INTO student_address (ID, studentID, address) VALUES ('16', '16', '5973 Moon Shadow Dr. Herriman, null, Atlanta, 2345');
INSERT INTO student_address (ID, studentID, address) VALUES ('17', '17', '13758 Dogwood St, Trona, null, San Jose, 93562');
INSERT INTO student_address (ID, studentID, address) VALUES ('18', '18', '2263 Ga 17 Hwy N, Millen, null, Las Vega, 30442');
INSERT INTO student_address (ID, studentID, address) VALUES ('19', '19', '321/vimal park, karve road, pune, 411038');
INSERT INTO student_address (ID, studentID, address) VALUES ('20', '20', 'Prashant Society, Kothrud, pune, 411038');
INSERT INTO student_address (ID, studentID, address) VALUES ('21', '21', '8 vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address (ID, studentID, address) VALUES ('22', '22', '9 vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address (ID, studentID, address) VALUES ('23', '23', '10  vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address (ID, studentID, address) VALUES ('24', '24', '4 vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address (ID, studentID, address) VALUES ('25', '25', '7 vaibhav, Ishadan soc, paud road, Pune');






INSERT INTO faculty (ID, namefirst, namelast, DOB, emailID) VALUES ('1', 'prachi', 'gupta', '12-Jun-1974', 'prachi.gupta@gmail.com');
INSERT INTO faculty (ID, namefirst, namelast, DOB, emailID) VALUES ('2', 'ketan', 'shukla', '25-Oct-1972', 'ketan.shukla@gmail.com');
INSERT INTO faculty (ID, namefirst, namelast, DOB, emailID) VALUES ('3', 'kiran', 'dev', '25-Oct-1971', 'kiran.dev@gmail.com');
INSERT INTO faculty (ID, namefirst, namelast, DOB, emailID) VALUES ('4', 'parag', 'patil', '31-Oct-1972', 'parag.patil@gmail.com');


INSERT INTO faculty_phone (ID, facultyID, phonenumber) VALUES ('1', '1', '7032300034');
INSERT INTO faculty_phone (ID, facultyID, phonenumber) VALUES ('2', '2', '7032300039');
INSERT INTO faculty_phone (ID, facultyID, phonenumber) VALUES ('3', '3', '7032300050');
INSERT INTO faculty_phone (ID, facultyID, phonenumber) VALUES ('4', '4', '7032300027');
INSERT INTO faculty_phone (ID, facultyID, phonenumber) VALUES ('5', '1', '7032301201');
INSERT INTO faculty_phone (ID, facultyID, phonenumber) VALUES ('6', '2', '7032303479');
INSERT INTO faculty_phone (ID, facultyID, phonenumber) VALUES ('7', '3', '7032306781');
INSERT INTO faculty_phone (ID, facultyID, phonenumber) VALUES ('8', '4', '7032390234');
INSERT INTO faculty_phone (ID, facultyID, phonenumber) VALUES ('9', '3', '7134567123');




INSERT INTO faculty_address (ID, facultyID, address) VALUES ('1', '1', '165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060');
INSERT INTO faculty_address (ID, facultyID, address) VALUES ('2', '2', 'Po Box 83, Faith, NC, New Jersey, 28041');
INSERT INTO faculty_address (ID, facultyID, address) VALUES ('3', '3', '3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313');
INSERT INTO faculty_address (ID, facultyID, address) VALUES ('4', '4', 'Po Box 77, Linking Road, UK');



INSERT INTO modules (ID, name, duration) VALUES ('1', 'Oracle', '1');
INSERT INTO modules (ID, name, duration) VALUES ('2', 'PHP', '1');
INSERT INTO modules (ID, name, duration) VALUES ('3', 'MySQL', '1');
INSERT INTO modules (ID, name, duration) VALUES ('4', 'Node', '1');
INSERT INTO modules (ID, name, duration) VALUES ('5', 'C++', '1');
INSERT INTO modules (ID, name, duration) VALUES ('6', 'C', '1');
INSERT INTO modules (ID, name, duration) VALUES ('7', 'JAVA1', '2');
INSERT INTO modules (ID, name, duration) VALUES ('8', 'JAVA2', '2');
INSERT INTO modules (ID, name, duration) VALUES ('9', 'MongoDB', '1');
INSERT INTO modules (ID, name, duration) VALUES ('10', 'NET', '2');
INSERT INTO modules (ID, name, duration) VALUES ('11', 'Hive', '1');
INSERT INTO modules (ID, name, duration) VALUES ('12', 'Python', '1');
INSERT INTO modules (ID, name, duration) VALUES ('13', 'Aptitude', '1');
INSERT INTO modules (ID, name, duration) VALUES ('14', 'OOPs with C++ Programming', '6');
INSERT INTO modules (ID, name, duration) VALUES ('15', 'Data Structures', '6');
INSERT INTO modules (ID, name, duration) VALUES ('16', 'OS Concepts', '6');
INSERT INTO modules (ID, name, duration) VALUES ('17', 'iOS Programming', '6');





INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('1', '1', '1');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('2', '1', '2');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('3', '1', '3');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('4', '1', '4');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('5', '1', '5');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('6', '1', '6');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('7', '1', '7');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('8', '1', '8');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('9', '1', '9');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('10', '2', '1');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('11', '2', '2');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('12', '2', '3');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('13', '2', '11');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('14', '2', '12');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('15', '2', '9');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('16', '3', '13');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('17', '3', '5');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('18', '3', '6');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('19', '4', '1');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('20', '4', '7');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('21', '4', '8');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('22', '5', '1');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('23', '5', '7');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('24', '5', '8');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('25', '6', '14');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('26', '6', '15');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('27', '6', '16');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('28', '6', '17');





INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('1', 'Batch1', '1', '01-Feb-2016', '31-Aug-2016', '80');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('2', 'Batch2', '2', '01-Feb-2016', '31-Aug-2016', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('3', 'Batch3', '3', '01-Feb-2016', '31-Mar-2016', '35');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('4', 'Batch4', '4', '01-Jul-2016', '30-Sep-2016', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('5', 'Batch5', '5', '01-Jul-2016', '30-Sep-2016', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('6', 'Batch6', '1', '01-Feb-2015', '31-Aug-2015', '80');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('7', 'Batch7', '2', '01-Feb-2015', '31-Aug-2015', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('8', 'Batch8', '3', '01-Apr-2017', '31-May-2017', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('9', 'Batch9', '4', '01-Jul-2018', '30-Sep-2018', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('10', 'Batch10', '5', '01-Sep-2018', '30-Nov-2018', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('11', 'Batch11', '1', '01-Aug-2017', '28-Feb-2018', '80');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('12', 'Batch12', '2', '01-Aug-2017', '28-Feb-2018', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('13', 'Batch13', '3', '01-Jul-2017', '31-Aug-2017', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('14', 'Batch14', '4', '01-May-2018', '31-Jul-2018', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('15', 'Batch15', '5', '01-Jun-2018', '30-Aug-2018', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('16', 'Batch16', '1', '01-Aug-2014', '28-Feb-2015', '80');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('17', 'Batch17', '2', '01-Aug-2014', '28-Feb-2015', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('18', 'Batch18', '3', '01-Mar-2018', '30-Apr-2018', '35');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('19', 'Batch19', '4', '01-Jan-2019', '30-Mar-2019', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('20', 'Batch20', '5', '01-Dec-2018', '28-Feb-2019', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('21', 'Batch21', '1', '01-Aug-2015', '28-Feb-2016', '80');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('22', 'Batch22', '2', '01-Aug-2015', '28-Feb-2016', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('23', 'Batch23', '3', '01-Mar-2019', '30-Apr-2019', '40');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('24', 'Batch24', '4', '01-Jan-2019', '30-Mar-2019', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('25', 'Batch25', '6', '01-Jan-2019', '30-Mar-2019', '30');





INSERT INTO batch_students (ID, batchID, studentID) VALUES ('1', '1', '1');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('2', '7', '5');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('3', '3', '4');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('4', '6', '3');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('5', '10', '6');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('6', '17', '8');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('7', '20', '12');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('8', '1', '7');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('9', '2', '12');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('10', '4', '15');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('11', '5', '20');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('12', '6', '5');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('13', '7', '3');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('14', '1', '7');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('15', '2', '10');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('16', '3', '5');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('17', '4', '6');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('18', '5', '3');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('19', '6', '1');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('20', '12', '10');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('21', '15', '17');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('22', '15', '18');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('23', '16', '18');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('24', '17', '12');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('25', '3', '20');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('26', '4', '17');







INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('1', '1', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('2', '1', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('3', '1', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('4', '2', '10', 'Alaska', 'University of Chicago', '68', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('5', '2', '12', 'New York', 'Yale University', '56', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('6', '2', 'B.Com', 'Arkansas', 'Yale University', '64', '2019');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('7', '3', '10', 'Arizona', 'Yale University', '75', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('8', '3', '12', 'California', 'California University', '86', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('9', '3', 'BE', 'Florida', 'University of Florida', '67', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('10', '4', '10', 'Idaho', 'Pennsylvania University', '58', '2010');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('11', '4', '12', 'New Hampshire', 'Yale University', '97', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('12', '4', 'M.Com.', 'Montana', 'Columbia University', '77', '2016');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('13', '5', '10', 'Alabama', 'Yale University', '56', '2008');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('14', '5', '12', 'Michigan', 'University of Michigan', '57', '2010');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('15', '5', 'M.Com.', 'Oklahoma', 'Stanford University', '86', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('16', '6', '10', 'Mississippi', 'Harvard University', '56', '2009');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('17', '6', '12', 'Alabama', 'Harvard University', '76', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('18', '6', 'BE', 'Indiana', 'University of Chicago', '87', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('19', '7', '10', 'Ohio', 'University of Ohio', '87', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('20', '7', '12', 'Iowa', 'Stanford University', '78', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('21', '7', 'BE', 'Kentucky', 'Harvard University', '97', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('22', '8', '10', 'Maryland', 'University Maryland', '56', '2010');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('23', '8', '12', 'Alabama', 'California University', '60', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('24', '8', 'M.Com.', 'Virginia', 'University of Florida', '87', '2016');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('25', '9', '10', 'Maine', 'Pennsylvania University', '98', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('26', '9', '12', 'Vermont', 'Yale University', '67', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('27', '9', 'BE', 'Kansas', 'Columbia University', '87', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('28', '10', '10', 'Texas', 'Yale University', '65', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('29', '10', '12', 'Oregon', 'University of Michigan', '76', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('30', '10', 'M.Com.', 'New Mexico', 'California University', '61', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('31', '11', '10', 'Nevada', 'University of Florida', '62', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('32', '11', '12', 'Indiana', 'Pennsylvania University', '63', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('33', '11', 'M.Com.', 'Ohio', 'University of Ohio', '56', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('34', '12', '10', 'New Hampshire', 'Yale University', '75', '2010');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('35', '12', '12', 'Montana', 'Stanford University', '45', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('36', '12', 'B.Com.', 'West Virginia', 'Harvard University', '50', '2016');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('37', '13', '10', 'Virginia', 'Harvard University', '67', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('38', '13', '12', 'Maine', 'University of Chicago', '78', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('39', '13', 'BE', 'Texas', 'University of Florida', '68', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('40', '14', '10', 'Oregon', 'University of Florida', '67', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('41', '14', '12', 'Florida', 'University of Florida', '87', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('42', '14', 'BE', 'Idaho', 'Yale University', '57', '2019');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('43', '15', '10', 'New Hampshire', 'California University', '96', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('44', '15', '12', 'Montana', 'University of Florida', '56', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('45', '15', 'BE', 'Alabama', 'Pennsylvania University', '65', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('46', '16', '10', 'Michigan', 'University of Michigan', '76', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('47', '16', '12', 'Oklahoma', 'Columbia University', '56', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('48', '16', 'BE', 'Mississippi', 'University of Michigan', '76', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('49', '17', '10', 'Alabama', 'University of Michigan', '88', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('50', '17', '12', 'Indiana', 'University of Michigan', '76', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('51', '17', 'BE', 'Ohio', 'University of Ohio', '68', '2019');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('52', '18', '10', 'Iowa', 'Stanford University', '86', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('53', '18', '12', 'Kentucky', 'Harvard University', '57', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('54', '18', 'BE', 'Maryland', 'Harvard University', '75', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('55', '19', '10', 'Alabama', 'University of Chicago', '69', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('56', '19', '12', 'Virginia', 'California University', '60', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('57', '19', 'BE', 'Maine', 'University of Florida', '61', '2019');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('58', '20', '10', 'Vermont', 'Pennsylvania University', '72', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('59', '20', '12', 'Iowa', 'Yale University', '83', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('60', '20', 'BE', 'Maryland', 'Columbia University', '72', '2019');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('61', '21', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('62', '21', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('63', '21', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('64', '22', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('65', '22', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('66', '22', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('67', '23', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('68', '23', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('69', '23', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('70', '24', '10', 'Ohio', 'University of Ohio', '87', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('71', '24', '12', 'Iowa', 'Stanford University', '78', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('72', '24', 'BE', 'Kentucky', 'Harvard University', '97', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('73', '25', '10', 'Ohio', 'University of Ohio', '87', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('74', '25', '12', 'Iowa', 'Stanford University', '78', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('75', '25', 'BE', 'Kentucky', 'Harvard University', '97', '2017');








INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('1', '1', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('2', '1', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('3', '1', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('4', '2', '10', 'Alaska', 'University of Chicago', '68', '2013');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('5', '2', '12', 'New York', 'Yale University', '56', '2015');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('6', '2', 'BE', 'Arkansas', 'Yale University', '64', '2019');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('7', '3', '10', 'Arizona', 'Yale University', '75', '2011');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('8', '3', '12', 'California', 'California University', '86', '2013');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('9', '3', 'BE', 'Florida', 'University of Florida', '67', '2017');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('10', '4', '10', 'Idaho', 'Pennsylvania University', '58', '2010');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('11', '4', '12', 'New Hampshire', 'Yale University', '97', '2012');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('12', '4', 'BE', 'Montana', 'Columbia University', '77', '2016');



