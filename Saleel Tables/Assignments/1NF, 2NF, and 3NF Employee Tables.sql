drop table if exists N1Employee;

create table N1Employee (
	ID int primary key,
    FIRSTNAME varchar(10),
	LASTNAME  varchar(10),
	GENDER char (1),
	MOBILENO1 varchar(12),
	MOBILENO2 varchar(12),
	HOBBY1 varchar(25),
	HOBBY2 varchar(25),
	CURRENTJOB varchar(50),
	PREVIOUSJOB1 varchar(50),
	PREVIOUSJOB2 varchar(50),
	PREVIOUSJOB3 varchar(50),
	ADDRESS varchar(100),
	HIREDATE date,
	SALARY int,
	COMM int,
	DEPTNAME varchar(16),
	QUALIFICATION  varchar(100)
);

INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `PREVIOUSJOB3`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('1', 'Denis', 'Murphy', 'M', '7032300013', '9850993445', 'Running', 'Knife making', 'Sr.Assistant', 'Jr. Clerk', 'Clerk', 'Trainee Clerk', '13758 Dogwood St, Trona, CA, 93562', '1980-05-25', '2675', 'ACCOUNTING', 'B.E.(EnTC)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('2', 'Jenny', 'Ross', 'F', '7032300099', '9876334665', 'Reading', 'Leather crafting', 'Sr.Assistant', '2263 Ga 17 Hwy N, Millen, GA, 30442', '1980-05-02', '2675', 'RESEARCH', 'MCA, MBA - Finance');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `PREVIOUSJOB3`, `ADDRESS`, `HIREDATE`, `SALARY`, `COMM`, `DEPTNAME`, `QUALIFICATION`) VALUES ('3', 'David', 'Ross', 'M', '7032300023', '9856099334', 'Stamp Collection', 'Magic', 'Salesman', 'Jr. Salesman', 'Trainee Salesman', 'Trainee Salesman', '409 Berry St, Louisa, KY, 41230', '1980-05-02', '2675', '3400', 'SALES', 'Comp Engg.');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('4', 'Fred', 'M', '7032300034', '9877776558', 'Cricket', 'Gaming', 'Head Clerk', 'Jr. Clerk', '7720 Covington Rd, White House, TN, 37188', '1980-05-02', '800', 'OPERATIONS', 'BE(COMP)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB3`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('5', 'Helen', 'Taylor', 'F', '7032300039', '9800875467', 'Acting', 'Puzzles', 'PRESIDENT', 'Trainee', '15 Hempstead St, Saugus, MA, 01906', '1980-05-02', '1200', 'PURCHASE', 'BE(E&TC)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('6', 'Rosaleen', 'Smith', 'F', '7032300050', '9703452956', 'Fashion', 'Football', 'Sr.Assistant', 'Assistant', 'Trainee', '165 Village Dr, Oakland, TN, 38060', '1980-12-17', '3400', 'PRODUCTION', '10th, 12th science, and BE(CSE)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('7', 'Kent', 'Clark', 'F', '7032300027', '9822003467', 'Ice skating', 'Running', 'MANAGER', 'Assistant Manager', 'Trainee', 'Po Box 83, Faith, NC, 28041', '1981-12-31', '2766', 'ACCOUNTING', '10th, 12th science, and BE(IT)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `PREVIOUSJOB3`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('8', 'Sharon', 'Allen', 'F', '7032300001', '9876376546', 'Writing', 'Swimming', 'BUSINESS MANAGER', 'Assistant Business Manager', 'Manager', 'Jr. Manager', '3402 Buccaneer Rose Ave, Bakersfield, CA, 93313 ', '1981-02-20', '1234', 'RESEARCH', '10th, 12th science, and BE(SC)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `ADDRESS`, `HIREDATE`, `SALARY`, `COMM`, `DEPTNAME`, `QUALIFICATION`) VALUES ('9', 'Stacy', 'Ward', 'F', '7032300079', '9922005577', 'Swimming', 'Puzzles', 'Sr. SALESMAN', 'Jr. Salesman', '165 Village Dr, Oakland, TN, 38060 ', '1981-02-22', '2301', '200', 'SALES', 'B.E.(EnTC)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('10', 'Betty', 'Jones', 'F', '7032300081', '9988567123', 'Coin Collection', 'Creative writing', 'OPERATIONS MANAGER', '7720 Covington Rd, White House, TN, 37188', '1981-04-02', '3900', 'OPERATIONS', 'MCA, MBA - Finance');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `PREVIOUSJOB3`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('11', 'Philip', 'Martin', 'M', '7032300054', '9192982671', 'Creative writing', 'Pet', 'Head Clerk', 'Jr. Clerk', 'Clerk', 'Trainee', '15 Hempstead St, Saugus, MA, 01906', '1981-09-28', '5000', 'PURCHASE', 'Comp Engg.');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('12', 'Lisa', 'Blake', 'F', '7032300059', '7070483345', 'Football', 'Fishkeeping', 'Sr.Analyst', '165 Village Dr, Oakland, TN, 38060', '1981-05-01', '5400', 'PRODUCTION', 'BE(COMP)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('13', 'David', 'Bell', 'M', '7032300086', '9866547863', 'Candle making', 'Crossword puzzles', 'MANAGER', 'Po Box 83, Faith, NC, 28041', '1980-10-27', '6000', 'ACCOUNTING', 'BE(E&TC)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('14', 'Peter', 'Anderson', 'M', '7032300082', '9966346796', 'Drama', 'Singing', 'Head Clerk', 'Jr. Clerk', 'Trainee', '808 Rocky Hill Rd Plymouth, Massachusetts(MA), 02360', '1981-01-03', '4500', 'RESEARCH', '10th, 12th science, and BE(SC)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `ADDRESS`, `HIREDATE`, `SALARY`, `COMM`, `DEPTNAME`, `QUALIFICATION`) VALUES ('15', 'Julia', 'Clark', 'F', '7032300042', '9926567854', 'Fishkeeping', 'Ice skating', 'Salesman', 'Jr. Salesman', '118 Lippitt Ave Warwick, Rhode Island(RI), 02889', '1981-06-09', '5000', '0', 'SALES', 'B.E.(EnTC)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB3`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('16', 'Alexander', 'Scott', 'M', '7032300055', '9922452575', 'Running', 'Creative writing', 'BUSINESS MANAGER', 'Trainee', '5973 Moon Shadow Dr. Herriman, Utah(UT)', '1982-12-09', '950', 'OPERATIONS', 'MCA, MBA - Finance');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB2`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('17', 'Emma', 'Forster', 'F', '7032300084', '7043234354', 'Cross-stitch', 'Singing', 'Salesman', 'Trainee', '13758 Dogwood St, Trona, CA, 93562', '1981-11-19', '3200', 'PURCHASE', 'B.E.(EnTC)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB2`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('18', 'Kerr', 'King', 'F', '7032300011', '7032662475', 'Cricket', 'Creative writing', 'Head Clerk', 'Trainee', '2263 Ga 17 Hwy N, Millen, GA, 30442', '1981-11-17', '2700', 'PRODUCTION', 'MCA, MBA - Finance');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `PREVIOUSJOB3`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('19', 'kalyani', 'mane', 'F', '8346547676', '9876567778', 'dancing', 'cooking', 'Software Developer', 'Jr. Software Developer', 'Trainee Software Programmer', 'Trainee Software Programmer', '321/vimal park, karve road pune', '2017-12-06', '4500', 'Development', '10th, 12th science, and BE(CSE)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `PREVIOUSJOB3`, `ADDRESS`, `HIREDATE`, `SALARY`, `COMM`, `DEPTNAME`, `QUALIFICATION`) VALUES ('20', 'Megha', 'Joshi', 'F', '7788992233', '7654328776', 'Reading Novels', 'Listening music', 'Software Developer', 'Jr. Software Developer', 'Trainee Software Programmer', 'Null', 'Prashant Society, Kothrud', '2018-12-12', '3500', '2000', 'Development', '10th, 12th science, and BE(IT)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `PREVIOUSJOB3`, `ADDRESS`, `HIREDATE`, `SALARY`, `COMM`, `DEPTNAME`, `QUALIFICATION`) VALUES ('21', 'Usha', 'Jeurgi', 'F', '8956238956', '8596234178', 'chess', 'Dance', 'Sr. Devloper', 'Jr. Devloper', 'Network Engineer', 'Java  Devloper', 'Pune', '2018-05-12', '6000', '8000', 'Devloper', '10th, 12th science, and BE(SC)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `HOBBY1`, `HOBBY2`, `PREVIOUSJOB1`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('22', 'Bhoopali', 'Nanadikar', 'F', '9405875046', 'Dancing', 'Wildlife Photography', 'Testing Engineer', 'A-005,Spring fields soc.,new DP road,kothrud,pune-38', '2017-12-30', '8500', 'Production', 'B.E.(EnTC)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `HOBBY1`, `HOBBY2`, `PREVIOUSJOB1`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('23', 'Kiran', 'Malik', 'F', '9518856535', 'Traveling', 'Photography', '.Net Developer', 'Aaraya clinic,Ishdan Society,Kothrud', '2017-05-05', '5000', 'Technical', 'MCA, MBA - Finance');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `PREVIOUSJOB3`, `ADDRESS`, `HIREDATE`, `SALARY`, `DEPTNAME`, `QUALIFICATION`) VALUES ('24', 'Harry', 'Bond', 'M', '9865321447', '8569744262', 'Reading', 'Blog writing', 'Project Manager', 'Software Developer', 'Jr. Analyst', 'Software Tester', 'San Jose, USA', '1995-10-12', '1000', 'Proj Management', 'Comp Engg.');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `PREVIOUSJOB3`, `ADDRESS`, `HIREDATE`, `SALARY`, `COMM`, `DEPTNAME`, `QUALIFICATION`) VALUES ('25', 'KAJAL', 'SONAWANE', 'F', '8805787668', '8605914496', 'DRAWING', 'SHOPPING', 'SOFTWARE DEVELOPER', 'WEB DEVELOPER', 'TESTING', 'JR.SOFTWARE DEVELOPER', 'KOTHRUD PUNE', '2018-07-01', '7000', '0.33', 'DEVELOPER', 'BE(COMP)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `ADDRESS`, `HIREDATE`, `SALARY`, `COMM`, `DEPTNAME`, `QUALIFICATION`) VALUES ('26', 'POONAM', 'BATWAL', 'F', '9096994584', '7387570363', 'MAKING ARTWORKS', 'LISTENING MUSIC', 'SOFTWARE DEVELOPER', 'WEB DEVELOPER', 'ATULNAGAR, PUNE', '1981-05-01', '5000', '800', 'MANAGER', 'BE(E&TC)');
INSERT INTO `n1employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `MOBILENO1`, `MOBILENO2`, `HOBBY1`, `HOBBY2`, `CURRENTJOB`, `PREVIOUSJOB1`, `PREVIOUSJOB2`, `ADDRESS`, `HIREDATE`, `SALARY`, `COMM`, `DEPTNAME`, `QUALIFICATION`) VALUES ('27', 'Pooja', 'Sattigeri', 'F', '9527206449', '9422374939', 'Playing badminton', 'Singing,Dancing', 'Sr. WEB DEVELOPER', 'WEB DEVELOPER', 'Trainee', 'Anurang apt vishrambag,Sangli', '2018-05-12', '6000', '8000', 'Devloper', '10th, 12th science, and BE(SC)');


--- 2nd FN Table and Data------------------------------------------------------------

Drop table if exists N2SALARY;   
Drop table if exists N2COMMISSION;
Drop table if exists N2Employee_Department;
Drop table if exists N2CONTACT;
Drop table if exists N2ADDRESS;
Drop table if exists N2QUALIFICATION;
Drop table if exists N2HOBBIES;
Drop table if exists N2JOBHISTORY;
Drop table if exists N2Employee;
Drop table if exists N2Department;

create table N2Employee (
	ID int primary key,
    FIRSTNAME varchar(12),
	LASTNAME  varchar(12),
	GENDER char (1),
	HIREDATE date
);


create table N2Department (
	ID int primary key,
	NAME varchar(20),
	LOCATION varchar(20)
);

create table N2Employee_Department (
	ID int primary key,
	DEPARTMENTID int,
	EMPLOYEEID int,
	FROMDATE date,
	TODATE date,
	foreign key(DEPARTMENTID) references N2Department(ID),
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2SALARY (
	ID int primary key,
	EMPLOYEEID int,
	FROMDATE date,
	TODATE date,
	SALARY int,
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2COMMISSION (
	ID int primary key,
	EMPLOYEEID int,
	FROMDATE date,
	TODATE date,
	COMMISSION int,
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2CONTACT (
	ID int primary key,
	EMPLOYEEID int,
	PHONENUMBER BIGINT(12),
	EMAILID varchar(40),
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2ADDRESS (
	ID int primary key,
	EMPLOYEEID int,
	LINE1 varchar(40),
	LINE2 varchar(40),
	city varchar(20),
	pin int,
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2QUALIFICATION (
	ID int primary key,
	EMPLOYEEID int,
	NAME varchar(10),
	Stream varchar(18),
	ADDMISSIONYEAR date,
	INSTITUTE varchar(15),
	UNIVERSITY varchar(25),
	YEAROFPASSING int,
	PERCENTAGE float(7, 2),
	GRADE char(6),
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2HOBBIES (
	ID int primary key,
	EMPLOYEEID int,
	NAME varchar(25),
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2JOBHISTORY (
	ID int primary key,
	EMPLOYEEID int,
	EMPLOYEER varchar(20),
	FROMDATE date,
	TODATE date,
	NATURE varchar(50),
	foreign key(EMPLOYEEID) references N2Employee(ID)
);


INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('1', 'Denis', 'Murphy', 'M', '1964-06-12');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('2', 'Jenny', 'Ross', 'F', '1964-10-25');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('3', 'David', 'Ross', 'M', '1964-10-25');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `GENDER`, `HIREDATE`) VALUES ('4', 'Fred', 'M', '1965-10-31');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('5', 'Helen', 'Taylor', 'F', '1965-01-12');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('6', 'Rosaleen', 'Smith', 'F', '1965-12-01');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('7', 'Kent', 'Clark', 'F', '1960-12-14');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('8', 'Sharon', 'Allen', 'F', '1960-12-29');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('9', 'Stacy', 'Ward', 'F', '1982-10-26');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('10', 'Betty', 'Jones', 'F', '1983-10-26');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('11', 'Philip', 'Martin', 'M', '1984-10-30');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('12', 'Lisa', 'Blake', 'F', '1984-11-30');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('13', 'David', 'Bell', 'M', '1985-12-01');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('14', 'Peter', 'Anderson', 'M', '1986-12-15');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('15', 'Julia', 'Clark', 'F', '1987-12-30');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('16', 'Alexander', 'Scott', 'M', '1965-12-01');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('17', 'Emma', 'Forster', 'F', '1982-10-26');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('18', 'Kerr', 'King', 'F', '1964-06-12');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('19', 'kalyani', 'mane', 'F', '1963-11-13');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('20', 'Megha', 'Joshi', 'F', '1962-07-30');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('21', 'Usha', 'Jeurgi', 'F', '1984-11-30');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('22', 'Bhoopali', 'Nanadikar', 'F', '1962-04-10');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('23', 'Kiran', 'Malik', 'F', '1962-04-10');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('24', 'Harry', 'Bond', 'M', '1962-04-10');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('25', 'KAJAL', 'SONAWANE', 'F', '1983-10-26');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('26', 'POONAM', 'BATWAL', 'F', '1983-10-26');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('27', 'Pooja', 'Sattigeri', 'F', '1962-07-30');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('28', 'Raju', 'Patel', 'M', '1983-10-26');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('29', 'Pinky', 'Abrol', 'F', '1983-10-26');
INSERT INTO `nf2`.`n2employee` (`ID`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `HIREDATE`) VALUES ('30', 'Mona', 'Das', 'F', '1962-07-30');


INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('10', 'ACCOUNTING', 'NEW YORK');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('20', 'RESEARCH', 'DALLAS');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('30', 'SALES', 'CHICAGO');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('40', 'OPERATIONS', 'BOSTON');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('50', 'PURCHASE', 'DELHI');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('60', 'PRODUCTION', 'PUNE');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('70', 'Development', 'BANGLORE');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('80', 'R&D', 'PARIS');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('90', 'FINANCE', 'LONDON');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('100', 'TESTING', 'BANGLORE');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('110', 'IT SUPPORT', 'BANGLORE');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('120', 'SHIPPING', 'CALIFORNIA');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('130', 'IT HELPDESK', 'Lyon');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('140', 'RETAIL SALES', 'CHICAGO');
INSERT INTO `nf2`.`n2department` (`ID`, `NAME`, `LOCATION`) VALUES ('150', 'HRD', 'Manchester');



INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('1', '20', '12', '1984-11-30', '1990-08-27');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('2', '30', '12', '1990-08-28', '1994-03-16');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('3', '40', '12', '1994-03-17', '2001-03-17');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('4', '30', '12', '2001-03-18', '2002-07-08');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('5', '30', '12', '2002-07-09', '2004-01-30');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('6', '30', '7', '1960-12-14', '1963-07-13');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('7', '30', '7', '1963-07-14', '1968-08-20');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('8', '30', '7', '1968-08-21', '1972-11-27');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('9', '30', '7', '1972-12-28', '1974-11-14');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('10', '30', '7', '1974-11-15', '1980-02-13');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('11', '30', '19', '1963-11-13', '1967-05-13');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('12', '30', '19', '1967-05-14', '1971-04-24');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('13', '30', '19', '1971-04-25', '1979-07-15');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('14', '30', '19', '1979-07-16', '1980-09-16');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('15', '30', '19', '1980-09-17', '1983-01-12');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('16', '30', '22', '1962-04-10', '1963-08-10');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('17', '30', '22', '1963-08-11', '1967-01-15');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('18', '30', '22', '1967-01-16', '1972-02-26');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('19', '30', '22', '1972-02-27', '1974-10-23');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('20', '30', '22', '1974-10-24', '1979-04-13');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('21', '30', '22', '1979-05-14', '1981-06-09');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('22', '30', '15', '1987-12-30', '1994-06-26');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('23', '30', '15', '1994-06-27', '2001-06-27');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('24', '30', '15', '2001-06-28', '2004-04-18');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('25', '30', '15', '2004-04-19', '2007-02-28');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('26', '30', '27', '1962-07-30', '1964-08-17');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('27', '30', '27', '1964-08-18', '1967-03-03');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('28', '30', '27', '1967-03-04', '1974-11-04');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('29', '30', '27', '1974-11-05', '1980-12-24');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('30', '30', '27', '1980-12-25', '1981-09-28');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('31', '30', '8', '1960-12-29', '1967-12-29');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('32', '30', '8', '1968-01-01', '1970-04-02');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('33', '30', '8', '1970-04-03', '1977-07-07');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('34', '30', '8', '1977-07-08', '1979-07-19');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('35', '30', '8', '1979-07-20', '1980-12-25');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('36', '30', '9', '1982-10-26', '1988-11-18');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('37', '30', '9', '1988-11-19', '1992-01-17');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('38', '30', '9', '1992-01-18', '1999-04-20');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('39', '30', '9', '1999-04-21', '2000-08-11');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('40', '30', '9', '2000-08-12', '2001-12-25');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('41', '30', '10', '1983-10-26', '1988-03-06');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('42', '30', '10', '1988-03-07', '1990-09-07');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('43', '30', '10', '1990-09-08', '1991-06-04');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('44', '30', '10', '1991-06-05', '2000-06-05');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('45', '30', '10', '2000-06-06', '2002-08-08');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('46', '30', '10', '2002-08-09', '2003-12-25');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('47', '10', '1', '1964-06-12', '1966-07-12');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('48', '10', '1', '1966-07-13', '1970-07-13');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('49', '20', '1', '1970-07-14', '1975-07-14');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('50', '40', '1', '1975-07-15', '1979-08-12');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('51', '20', '1', '1979-08-13', '1983-08-12');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('52', '20', '2', '1964-10-25', '1969-12-02');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('53', '20', '2', '1969-12-03', '1974-07-07');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('54', '120', '2', '1974-07-08', '1979-02-21');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('55', '90', '2', '1979-02-22', '1980-03-21');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('56', '110', '2', '1980-03-22', '1983-12-25');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('57', '100', '3', '1964-10-25', '1969-12-02');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('58', '110', '3', '1969-12-03', '1974-07-07');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('59', '130', '3', '1974-07-08', '1979-02-21');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('60', '130', '3', '1979-02-22', '1980-03-21');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('61', '130', '3', '1980-03-22', '1983-12-25');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('62', '50', '4', '1965-10-31', '1970-05-11');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('63', '50', '4', '1970-05-12', '1975-07-17');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('64', '60', '4', '1975-07-18', '1978-11-02');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('65', '60', '4', '1980-11-03', '1982-04-09');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('66', '50', '4', '1982-04-10', '1983-04-27');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('67', '90', '4', '1983-04-28', '1984-12-30');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('68', '10', '5', '1965-01-12', '1969-01-12');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('69', '10', '5', '1969-01-13', '1972-09-05');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('70', '130', '5', '1972-09-06', '1977-11-13');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('71', '130', '5', '1977-11-14', '1981-12-31');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('72', '10', '5', '1982-01-01', '1983-03-23');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('73', '10', '5', '1983-03-24', '1985-01-30');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('74', '20', '6', '1965-12-01', '1973-02-27');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('75', '70', '6', '1973-02-28', '1976-05-14');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('76', '70', '6', '1976-05-15', '1978-05-16');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('77', '70', '6', '1978-04-17', '1982-01-27');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('78', '70', '6', '1982-02-28', '1985-01-30');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('79', '10', '11', '1984-10-30', '1987-11-29');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('80', '10', '11', '1987-11-30', '1990-12-31');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('81', '130', '11', '1991-01-01', '1998-05-27');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('82', '130', '11', '1998-05-28', '2001-05-28');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('83', '10', '11', '2001-05-29', '2002-03-31');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('84', '10', '11', '2002-04-01', '2003-12-30');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('85', '130', '13', '1985-12-01', '1987-12-20');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('86', '50', '13', '1987-12-21', '1992-08-26');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('87', '50', '13', '1992-08-27', '2003-03-17');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('88', '60', '13', '2003-03-18', '2005-01-30');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('89', '60', '14', '1986-12-15', '1989-02-23');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('90', '50', '14', '1989-02-24', '1999-04-14');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('91', '90', '14', '1999-04-15', '2004-03-16');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('92', '90', '14', '2004-03-17', '2006-02-13');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('93', '80', '23', '1962-04-10', '1963-08-10');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('94', '80', '23', '1963-08-11', '1967-01-15');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('95', '70', '23', '1967-01-16', '1972-02-26');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('96', '80', '23', '1972-02-27', '1974-10-23');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('97', '90', '23', '1974-10-24', '1979-04-13');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('98', '90', '23', '1979-05-14', '1981-06-09');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('99', '30', '24', '1962-04-10', '1963-08-10');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('100', '30', '24', '1963-08-11', '1967-01-15');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('101', '80', '24', '1967-01-16', '1972-02-26');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('102', '80', '24', '1972-02-27', '1974-10-23');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('103', '70', '24', '1974-10-24', '1979-04-13');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('104', '80', '24', '1979-05-14', '1981-06-09');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('105', '90', '20', '1962-07-30', '1964-08-17');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('106', '90', '20', '1964-08-18', '1967-03-03');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('107', '30', '20', '1967-03-04', '1974-11-04');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('108', '30', '20', '1974-11-05', '1980-12-24');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('109', '80', '20', '1980-12-25', '1981-09-28');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('110', '80', '17', '1982-10-26', '1988-11-18');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('111', '70', '17', '1988-11-19', '1992-01-17');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('112', '100', '17', '1992-01-18', '1999-04-20');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('113', '120', '17', '1999-04-21', '2000-08-11');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('114', '120', '17', '2000-08-12', '2001-12-25');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('115', '120', '16', '1965-12-01', '1973-02-27');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('116', '120', '16', '1973-02-28', '1976-05-14');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('117', '120', '16', '1976-05-15', '1978-05-16');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('118', '120', '16', '1978-04-17', '1982-01-27');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('119', '120', '16', '1982-02-28', '1985-01-30');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('120', '130', '18', '1964-06-12', '1966-07-12');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('121', '130', '18', '1966-07-13', '1970-07-13');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('122', '10', '18', '1970-07-14', '1975-07-14');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('123', '10', '18', '1975-07-15', '1979-08-12');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('124', '20', '18', '1979-08-13', '1983-08-12');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('125', '70', '25', '1983-10-26', '1988-03-06');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('126', '70', '25', '1988-03-07', '1990-09-07');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('127', '10', '25', '1990-09-08', '1991-06-04');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('128', '10', '25', '1991-06-05', '2000-06-05');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('129', '60', '25', '2000-06-06', '2002-08-08');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('130', '70', '25', '2002-08-09', '2003-12-25');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('131', '20', '21', '1984-11-30', '1990-08-27');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('132', '100', '21', '1990-08-28', '1994-03-16');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('133', '20', '21', '1994-03-17', '2001-03-17');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('134', '130', '21', '2001-03-18', '2002-07-08');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('135', '90', '21', '2002-07-09', '2004-01-30');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('136', '90', '26', '1962-07-30', '1964-08-17');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('137', '90', '26', '1964-08-18', '1967-03-03');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('138', '30', '26', '1967-03-04', '1974-11-04');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('139', '30', '26', '1974-11-05', '1980-12-24');
INSERT INTO `nf2`.`n2employee_department` (`ID`, `DEPARTMENTID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('140', '80', '26', '1980-12-25', '1981-09-28');



INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('1', '12', '1984-11-30', '1990-08-27', '1200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('2', '12', '1990-08-28', '1994-03-16', '1435');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('3', '12', '1994-03-17', '2001-03-17', '1760');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('4', '12', '2001-03-18', '2002-07-08', '3100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('5', '12', '2002-07-09', '2004-01-30', '3100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('6', '7', '1960-12-14', '1963-07-13', '900');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('7', '7', '1963-07-14', '1968-08-20', '1400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('8', '7', '1968-08-21', '1972-11-27', '1700');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('9', '7', '1972-12-28', '1974-11-14', '3000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('10', '7', '1974-11-15', '1980-02-13', '2600');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('11', '19', '1963-11-13', '1967-05-13', '1300');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('12', '19', '1967-05-14', '1971-04-24', '1600');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('13', '19', '1971-04-25', '1979-07-15', '2000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('14', '19', '1979-07-16', '1980-09-16', '2100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('15', '19', '1980-09-17', '1983-01-12', '2700');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('16', '22', '1962-04-10', '1963-08-10', '1500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('17', '22', '1963-08-11', '1967-01-15', '1700');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('18', '22', '1967-01-16', '1972-02-26', '2000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('19', '22', '1972-02-27', '1974-10-23', '2500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('20', '22', '1974-10-24', '1979-04-13', '3200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('21', '22', '1979-05-14', '1981-06-09', '3200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('22', '15', '1987-12-30', '1994-06-26', '2200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('23', '15', '1994-06-27', '2001-06-27', '2400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('24', '15', '2001-06-28', '2004-04-18', '2800');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('25', '15', '2004-04-19', '2007-02-28', '3100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('26', '27', '1962-07-30', '1964-08-17', '1300');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('27', '27', '1964-08-18', '1967-03-03', '2400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('28', '27', '1967-03-04', '1974-11-04', '2650');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('29', '27', '1974-11-05', '1980-12-24', '3200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('30', '27', '1980-12-25', '1981-09-28', '3600');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('31', '8', '1960-12-29', '1967-12-29', '650');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('32', '8', '1968-01-01', '1970-04-02', '800');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('33', '8', '1970-04-03', '1977-07-07', '1100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('34', '8', '1977-07-08', '1979-07-19', '1400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('35', '8', '1979-07-20', '1980-12-25', '1990');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('36', '9', '1982-10-26', '1988-11-18', '900');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('37', '9', '1988-11-19', '1992-01-17', '1000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('38', '9', '1992-01-18', '1999-04-20', '1990');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('39', '9', '1999-04-21', '2000-08-11', '2100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('40', '9', '2000-08-12', '2001-12-25', '2350');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('41', '10', '1983-10-26', '1988-03-06', '900');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('42', '10', '1988-03-07', '1990-09-07', '1000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('43', '10', '1990-09-08', '1991-06-04', '1500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('44', '10', '1991-06-05', '2000-06-05', '2100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('45', '10', '2000-06-06', '2002-08-08', '2350');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('46', '10', '2002-08-09', '2003-12-25', '2600');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('47', '1', '1964-06-12', '1966-07-12', '2350');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('48', '1', '1966-07-13', '1970-07-13', '600');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('49', '1', '1970-07-14', '1975-07-14', '1200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('50', '1', '1975-07-15', '1979-08-12', '1800');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('51', '1', '1979-08-13', '1983-08-12', '2000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('52', '2', '1964-10-25', '1969-12-02', '300');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('53', '2', '1969-12-03', '1974-07-07', '700');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('54', '2', '1974-07-08', '1979-02-21', '1900');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('55', '2', '1979-02-22', '1980-03-21', '2200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('56', '2', '1980-03-22', '1983-12-25', '2500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('57', '3', '1964-10-25', '1969-12-02', '320');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('58', '3', '1969-12-03', '1974-07-07', '725');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('59', '3', '1974-07-08', '1979-02-21', '1800');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('60', '3', '1979-02-22', '1980-03-21', '2100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('61', '3', '1980-03-22', '1983-12-25', '2400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('62', '4', '1965-10-31', '1970-05-11', '240');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('63', '4', '1970-05-12', '1975-07-17', '800');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('64', '4', '1975-07-18', '1978-11-02', '1500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('65', '4', '1980-11-03', '1982-04-09', '1700');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('66', '4', '1982-04-10', '1983-04-27', '2300');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('67', '4', '1983-04-28', '1984-12-30', '2600');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('68', '5', '1965-01-12', '1969-01-12', '225');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('69', '5', '1969-01-13', '1972-09-05', '560');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('70', '5', '1972-09-06', '1977-11-13', '1400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('71', '5', '1977-11-14', '1981-12-31', '1950');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('72', '5', '1982-01-01', '1983-03-23', '2100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('73', '5', '1983-03-24', '1985-01-30', '2400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('74', '6', '1965-12-01', '1973-02-27', '650');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('75', '6', '1973-02-28', '1976-05-14', '1300');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('76', '6', '1976-05-15', '1978-05-16', '1900');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('77', '6', '1978-04-17', '1982-01-27', '2000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('78', '6', '1982-02-28', '1985-01-30', '2300');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('79', '11', '1984-10-30', '1987-11-29', '980');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('80', '11', '1987-11-30', '1990-12-31', '1211');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('81', '11', '1991-01-01', '1998-05-27', '1654');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('82', '11', '1998-05-28', '2001-05-28', '2155');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('83', '11', '2001-05-29', '2002-03-31', '2354');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('84', '11', '2002-04-01', '2003-12-30', '2400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('85', '13', '1985-12-01', '1987-12-20', '2300');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('86', '13', '1987-12-21', '1992-08-26', '2600');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('87', '13', '1992-08-27', '2003-03-17', '3200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('88', '13', '2003-03-18', '2005-01-30', '3400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('89', '14', '1986-12-15', '1989-02-23', '1435');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('90', '14', '1989-02-24', '1999-04-14', '1760');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('91', '14', '1999-04-15', '2004-03-16', '5000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('92', '14', '2004-03-17', '2006-02-13', '3100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('93', '23', '1962-04-10', '1963-08-10', '1500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('94', '23', '1963-08-11', '1967-01-15', '1700');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('95', '23', '1967-01-16', '1972-02-26', '2000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('96', '23', '1972-02-27', '1974-10-23', '2500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('97', '23', '1974-10-24', '1979-04-13', '3000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('98', '23', '1979-05-14', '1981-06-09', '3200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('99', '24', '1962-04-10', '1963-08-10', '1500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('100', '24', '1963-08-11', '1967-01-15', '1700');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('101', '24', '1967-01-16', '1972-02-26', '2000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('102', '24', '1972-02-27', '1974-10-23', '2500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('103', '24', '1974-10-24', '1979-04-13', '3000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('104', '24', '1979-05-14', '1981-06-09', '3200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('105', '20', '1962-07-30', '1964-08-17', '1300');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('106', '20', '1964-08-18', '1967-03-03', '2400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('107', '20', '1967-03-04', '1974-11-04', '2650');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('108', '20', '1974-11-05', '1980-12-24', '3200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('109', '20', '1980-12-25', '1981-09-28', '3600');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('110', '17', '1982-10-26', '1988-11-18', '300');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('111', '17', '1988-11-19', '1992-01-17', '700');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('112', '17', '1992-01-18', '1999-04-20', '1300');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('113', '17', '1999-04-21', '2000-08-11', '1500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('114', '17', '2000-08-12', '2001-12-26', '2350');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('115', '16', '1965-12-01', '1973-02-27', '650');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('116', '16', '1973-02-28', '1976-05-14', '1100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('117', '16', '1976-05-15', '1978-05-16', '1700');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('118', '16', '1978-04-17', '1982-01-27', '2200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('119', '16', '1982-02-28', '1985-01-30', '5000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('120', '18', '1964-06-12', '1966-07-12', '600');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('121', '18', '1966-07-13', '1970-07-13', '1000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('122', '18', '1970-07-14', '1975-07-14', '1600');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('123', '18', '1975-07-15', '1979-08-12', '1800');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('124', '18', '1979-08-13', '1983-08-12', '2200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('125', '25', '1983-10-26', '1988-03-06', '900');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('126', '25', '1988-03-07', '1990-09-07', '1000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('127', '25', '1990-09-08', '1991-06-04', '1500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('128', '25', '1991-06-05', '2000-06-05', '2100');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('129', '25', '2000-06-06', '2002-08-08', '2350');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('130', '25', '2002-08-09', '2003-12-25', '2600');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('131', '21', '1984-11-30', '1990-08-27', '1200');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('132', '21', '1990-08-28', '1994-03-16', '1500');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('133', '21', '1994-03-17', '2001-03-17', '1800');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('134', '21', '2001-03-18', '2002-07-08', '2400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('135', '21', '2002-07-09', '2004-01-30', '2900');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('136', '26', '1962-07-30', '1964-08-17', '1300');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('137', '26', '1964-08-18', '1967-03-03', '2400');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('138', '26', '1967-03-04', '1974-11-04', '2650');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('139', '26', '1974-11-05', '1980-12-24', '5000');
INSERT INTO `nf2`.`n2salary` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `SALARY`) VALUES ('140', '26', '1980-12-25', '1981-09-28', '5000');



INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('1', '12', '1984-11-30', '1990-08-27');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('2', '12', '1990-08-28', '1994-03-16', '200');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('3', '12', '1994-03-17', '2001-03-17');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('4', '12', '2001-03-18', '2002-07-08', '500');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('5', '12', '2002-07-09', '2004-01-30');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('6', '7', '1960-12-14', '1963-07-13', '350');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('7', '7', '1963-07-14', '1968-08-20', '450');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('8', '7', '1968-08-21', '1972-11-27');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('9', '7', '1972-12-28', '1974-11-14', '400');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('10', '7', '1974-11-15', '1980-02-13', '350');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('11', '7', '1974-11-15', '1980-02-13', '650');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('12', '19', '1963-11-13', '1967-05-13', '345');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('13', '19', '1967-05-14', '1971-04-24', '370');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('14', '19', '1971-04-25', '1979-07-15');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('15', '19', '1979-07-16', '1980-09-16', '400');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('16', '19', '1980-09-17', '1983-01-12', '100');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('17', '22', '1962-04-10', '1963-08-10', '150');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('18', '22', '1963-08-11', '1967-01-15');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('19', '22', '1967-01-16', '1972-02-26', '200');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('20', '22', '1972-02-27', '1974-10-23', '250');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('21', '22', '1974-10-24', '1979-04-13', '300');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('22', '22', '1979-05-14', '1981-06-09');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('23', '15', '1987-12-30', '1994-06-26', '300');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('24', '15', '1994-06-27', '2001-06-27', '250');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('25', '15', '2001-06-28', '2004-04-18');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('26', '15', '2004-04-19', '2007-02-28', '100');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('27', '27', '1962-07-30', '1964-08-17', '160');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('28', '27', '1964-08-18', '1967-03-03');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('29', '27', '1967-03-04', '1974-11-04', '500');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('30', '27', '1974-11-05', '1980-12-24');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('31', '27', '1980-12-25', '1981-09-28', '0');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('32', '8', '1960-12-29', '1967-12-29', '0');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('33', '8', '1968-01-01', '1970-04-02', '600');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('34', '8', '1970-04-03', '1977-07-07');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('35', '8', '1977-07-08', '1979-07-19', '0');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('36', '8', '1979-07-20', '1980-12-25', '170');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('37', '9', '1982-10-26', '1988-11-18');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('38', '9', '1988-11-19', '1992-01-17', '200');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('39', '9', '1992-01-18', '1999-04-20', '245');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('40', '9', '1999-04-21', '2000-08-11', '275');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('41', '9', '2000-08-12', '2001-12-25');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('42', '10', '1983-10-26', '1988-03-06');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('43', '10', '1988-03-07', '1990-09-07', '0');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('44', '10', '1990-09-08', '1991-06-04');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('45', '10', '1991-06-05', '2000-06-05', '700');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`) VALUES ('46', '10', '2000-06-06', '2002-08-08');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `FROMDATE`, `TODATE`, `COMMISSION`) VALUES ('47', '10', '2002-08-09', '2003-12-25', '750');



INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('1', '1', '7032300034', 'denis@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('2', '2', '7032300039', 'jenny@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('3', '3', '7032300050', 'david@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('4', '4', '7032300027', 'fred@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('5', '5', '7032300001', 'helen@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('6', '6', '7032300079', 'rosaleen@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('7', '7', '7032300081', 'kent@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('8', '8', '7032300054', 'sharon@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('9', '9', '7032300059', 'stacy@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('10', '10', '7032300086', 'betty@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('11', '11', '7032300082', 'philip@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('12', '12', '7032300042', 'lisa@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('13', '13', '7032300055', 'david@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('14', '14', '7032300013', 'peter@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('15', '15', '7032300099', 'julia@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('16', '16', '7032300023', 'alexander@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('17', '17', '7032300084', 'emma@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('18', '18', '7032300011', 'kerr@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('19', '19', '7032300066', 'kalyani@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('20', '20', '7032300096', 'megha@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('21', '21', '7032300007', 'usha@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('22', '22', '7032300094', 'bhoopali@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('23', '23', '7032300026', 'kiran@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('24', '24', '7032300046', 'harry@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('25', '25', '7032300028', 'kajal@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('26', '26', '7032300024', 'poonam@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('27', '27', '7032300088', 'pooja@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('28', '5', '7032300092', 'mankind@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('29', '3', '7032300076', 'makeover@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('30', '12', '7032300040', 'james007@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('31', '1', '7032340703', 'denisnew@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('32', '2', '9922330039', 'jenny123@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('33', '3', '9988300050', 'samdavid@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('34', '10', '9890774332', 'bettyxyz@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('35', '11', '9922583910', 'philipppp@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('36', '12', '9890774463', 'lisalone@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('37', '13', '7898836137', 'davidhub@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('38', '14', '9876895431', 'peterjaw@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('39', '10', '8080561820', 'bolt@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('40', '11', '8800473829', 'nuttis@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('41', '21', '7032300007', 'ushafan@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('42', '22', '7032300094', 'bhoopaliM@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('43', '23', '7032300026', 'kiran.KK@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('44', '24', '7032300046', 'harry.potter123@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('45', '25', '7032300028', 'kajal_KA@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('46', '26', '7032307324', 'poonam_AA@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('47', '14', '6032301213', 'peter_321@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('48', '15', '4432381699', 'julia_Rob_199@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('49', '16', '7832304023', 'alexander_the_great@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('50', '17', '4532306484', 'emma.khan@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('51', '18', '8932309811', 'jim_kerr@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('52', '19', '6532307366', 'kalyani@gmail.com');
INSERT INTO `nf2`.`n2contact` (`ID`, `EMPLOYEEID`, `PHONENUMBER`, `EMAILID`) VALUES ('53', '7', '6532334066', 'sam.patil@gmail.com');



INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('1', '1', '13758 Dogwood', 'St, Trona, CA,', 'Los Angeles', '93562');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('2', '2', '2263 Ga 17 Hwy N', 'Millen, GA', 'Atlanta', '30442');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('3', '3', '409 Berry St', 'Louisa, KY', 'San Jose', '41230');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('4', '4', '7720 Covington Rd', 'Pink Stand, TN', 'San Francisco', '37188');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('5', '5', '15 Hempstead', 'St, Saugus, MA', 'Las Vega', '1906');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('6', '6', '165 Village Dr., P.O. Box 3700 Eureka', 'Oakland, TN', 'Oakland', '38060');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('7', '7', 'Po Box 83', 'Faith, NC', 'New Jersey', '28041');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('8', '8', '3402 Buccaneer Rose Ave', 'Bakersfield, CA', 'Boston', '93313');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('9', '9', '1615 Town Hall   ', 'Oakland, TN', 'Oakland', '38060');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('10', '10', '7710 Covington Rd', 'New State Road', 'New York', '37188');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('11', '11', '15 Hempstead St', 'Saugus, MA', 'Boston', '1906');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('12', '12', '165 Ken city, P.O. Box 942873', '50 Higuera Street', 'Oakland', '38060');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('13', '13', 'Po Box 83, Faith, NC', 'null', 'New York', '28041');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('14', '14', '808 Rocky Hill Rd', 'Plymouth 1993 Cross lane', 'Boston', '32360');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('15', '15', '118 Lippitt Ave Warwick, Rhode Island', '100 S. Main Street', 'Los Angeles', '12889');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('16', '16', '5973 Moon Shadow Dr. Herriman', 'null', 'Atlanta', '2345');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('17', '17', '13758 Dogwood St, Trona', 'null', 'San Jose', '93562');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('18', '18', '2263 Ga 17 Hwy N, Millen', 'null', 'Las Vega', '30442');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('19', '19', '321/vimal park', 'karve road', 'pune', '411038');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('20', '20', 'Prashant Society', 'Kothrud', 'pune', '411038');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('21', '21', 'Inhadan soc', 'Paud Road', 'pune', '411038');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('22', '22', 'A-005,Spring fields soc.', 'new DP road-Kothrud', 'pune', '411038');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('23', '23', 'Aaraya clinic,Ishdan Society', 'Kothrud', 'pune', '411038');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('24', '24', '8 vaibhav, ishadan sco', 'Paud Road', 'pune', '411038');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('25', '25', '27/A12 Palak nagar', 'MG Road, - GGNT', 'akola', '444001');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('26', '26', '12/A1010 Ramnagar, nana peth', 'KBRE Road', 'nasik', '420003');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('27', '27', 'Anurang apt vishrambag,Sangli', 'null', 'sangli', '460004');




INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('1', '1', '10', 'General', '1957-08-02', 'Alabama', 'Stanford University', '1958', '62', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('2', '1', '12', 'Science', '1959-06-22', 'Alaska', 'Harvard University', '1960', '56', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('3', '1', 'BE', 'IT', '1960-06-12', 'Arizona', 'Harvard University', '1964', '75', 'B');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('4', '2', '10', 'General', '1957-01-19', 'Alaska', 'University of Chicago', '1958', '67', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('5', '2', '12', 'Commerce', '1959-10-23', 'New York', 'Yale University', '1960', '67', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('6', '2', 'B.Com', 'Accounting', '1960-06-12', 'Arkansas', 'Yale University', '1964', '69', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('7', '3', '10', 'General', '1957-11-25', 'Arizona', 'Yale University', '1958', '86', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('8', '3', '12', 'Science', '1959-02-17', 'California', 'California University', '1960', '57', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('9', '3', 'BE', 'IT', '1960-06-12', 'Florida', 'University of Florida', '1964', '85', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('10', '4', '10', 'General', '1958-03-19', 'Idaho', 'Pennsylvania University', '1959', '89', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('11', '4', '12', 'Commerce', '1960-05-21', 'New Hampshire', 'Yale University', '1961', '96', 'A+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('12', '4', 'M.Com.', 'Marketing', '1961-10-31', 'Montana', 'Columbia University', '1965', '67', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('13', '5', '10', 'General', '1958-04-21', 'Alabama', 'Yale University', '1959', '78', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('14', '5', '12', 'Commerce', '1960-05-22', 'Michigan', 'University of Michigan', '1961', '67', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('15', '5', 'M.Com.', 'Auditing', '1961-10-31', 'Oklahoma', 'Stanford University', '1965', '50', 'F');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('16', '6', '10', 'General', '1958-01-24', 'Mississippi', 'Harvard University', '1959', '60', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('17', '6', '12', 'Science', '1960-03-13', 'Alabama', 'Harvard University', '1961', '59', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('18', '6', 'BE', 'CS', '1961-10-31', 'Indiana', 'University of Chicago', '1965', '56', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('19', '7', '10', 'General', '1953-06-14', 'Ohio', 'University of Ohio', '1954', '45', 'F');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('20', '7', '12', 'Science', '1955-04-24', 'Iowa', 'Stanford University', '1956', '48', 'F');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('21', '7', 'BE', 'Civil', '1956-12-14', 'Kentucky', 'Harvard University', '1960', '68', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('22', '8', '10', 'General', '1953-03-10', 'Maryland', 'University Maryland', '1954', '97', 'A+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('23', '8', '12', 'Commerce', '1955-04-19', 'Alabama', 'California University', '1956', '88', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('24', '8', 'M.Com.', 'Accounting', '1956-12-14', 'Virginia', 'University of Florida', '1960', '79', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('25', '9', '10', 'General', '1975-03-30', 'Maine', 'Pennsylvania University', '1976', '75', 'B');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('26', '9', '12', 'Science', '1977-04-26', 'Vermont', 'Yale University', '1978', '50', 'F');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('27', '9', 'BE', 'Agricultural', '1978-10-26', 'Kansas', 'Columbia University', '1982', '78', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('28', '10', '10', 'General', '1976-04-12', 'Texas', 'Yale University', '1977', '81', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('29', '10', '12', 'Commerce', '1978-05-17', 'Oregon', 'University of Michigan', '1979', '80', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('30', '10', 'M.Com.', 'Business Law', '1979-10-26', 'New Mexico', 'California University', '1983', '86', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('31', '11', '10', 'General', '1977-01-30', 'Nevada', 'University of Florida', '1978', '69', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('32', '11', '12', 'Commerce', '1979-02-10', 'Indiana', 'Pennsylvania University', '1980', '78', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('33', '11', 'M.Com.', 'Cost Accounting', '1980-10-30', 'Ohio', 'University of Ohio', '1984', '79', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('34', '12', '10', 'General', '1977-02-07', 'New Hampshire', 'Yale University', '1978', '98', 'A+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('35', '12', '12', 'Commerce', '1979-05-09', 'Montana', 'Stanford University', '1980', '65', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('36', '12', 'B.Com.', 'Cost Accounting', '1980-03-30', 'West Virginia', 'Harvard University', '1984', '55', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('37', '13', '10', 'General', '1978-07-01', 'Virginia', 'Harvard University', '1979', '54', 'F');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('38', '13', '12', 'Science', '1980-08-05', 'Maine', 'University of Chicago', '1981', '69', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('39', '13', 'BE', 'Mining', '1981-12-01', 'Texas', 'University of Florida', '1985', '72', 'B');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('40', '14', '10', 'General', '1979-05-15', 'Oregon', 'University of Florida', '1980', '57', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('41', '14', '12', 'Science', '1981-06-17', 'Florida', 'University of Florida', '1982', '57', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('42', '14', 'BE', 'Environmental', '1982-12-15', 'Idaho', 'Yale University', '1986', '76', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('43', '15', '10', 'General', '1980-05-28', 'New Hampshire', 'California University', '1981', '87', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('44', '15', '12', 'Science', '1982-07-30', 'Montana', 'University of Florida', '1983', '85', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('45', '15', 'BE', 'Environmental', '1983-12-30', 'Alabama', 'Pennsylvania University', '1987', '82', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('46', '16', '10', 'General', '1958-03-01', 'Michigan', 'University of Michigan', '1959', '75', 'B');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('47', '16', '12', 'Science', '1960-05-01', 'Oklahoma', 'Columbia University', '1961', '79', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('48', '16', 'BE', 'Marine', '1961-12-01', 'Mississippi', 'University of Michigan', '1965', '67', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('49', '17', '10', 'General', '1975-04-21', 'Alabama', 'University of Michigan', '1976', '57', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('50', '17', '12', 'Science', '1977-01-18', 'Indiana', 'University of Michigan', '1978', '59', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('51', '17', 'BE', 'Marine', '1978-10-26', 'Ohio', 'University of Ohio', '1982', '60', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('52', '18', '10', 'General', '1957-03-12', 'Iowa', 'Stanford University', '1958', '62', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('53', '18', '12', 'Science', '1959-03-13', 'Kentucky', 'Harvard University', '1960', '71', 'B');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('54', '18', 'BE', 'Mechanical', '1960-06-12', 'Maryland', 'Harvard University', '1964', '57', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('55', '19', '10', 'General', '1955-04-13', 'Alabama', 'University of Chicago', '1956', '86', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('56', '19', '12', 'Science', '1957-03-20', 'Virginia', 'California University', '1958', '79', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('57', '19', 'BE', 'Mechanical', '1958-11-13', 'Maine', 'University of Florida', '1963', '56', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('58', '20', '10', 'General', '1955-01-30', 'Vermont', 'Pennsylvania University', '1956', '86', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('59', '20', '12', 'Science', '1957-02-28', 'Iowa', 'Yale University', '1958', '87', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('60', '20', 'BE', 'Textile', '1958-07-30', 'Maryland', 'Columbia University', '1962', '89', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('61', '21', '10', 'General', '1977-04-23', 'Indiana', 'Yale University', '1978', '65', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('62', '21', '12', 'Science', '1979-05-01', 'Oklahoma', 'University of Michigan', '1980', '68', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('63', '21', 'BE', 'Mining', '1980-11-30', 'Mississippi', 'Columbia University', '1984', '85', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('64', '22', '10', 'General', '1955-01-10', 'Alabama', 'Columbia University', '1956', '45', 'F');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('65', '22', '12', 'Science', '1957-02-12', 'Alaska', 'Columbia University', '1958', '75', 'B');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('66', '22', 'BE', 'Mechanical', '1958-04-10', 'Arizona', 'Columbia University', '1962', '55', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('67', '23', '10', 'General', '1955-02-10', 'Alaska', 'Columbia University', '1956', '80', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('68', '23', '12', 'Commerce', '1957-04-14', 'New York', 'Columbia University', '1958', '91', 'A+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('69', '23', 'M.Com.', 'Business Economics', '1958-07-30', 'Arkansas', 'Yale University', '1962', '56', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('70', '24', '10', 'General', '1955-01-13', 'Arizona', 'Yale University', '1956', '80', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('71', '24', '12', 'Science', '1957-05-17', 'California', 'California University', '1958', '86', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('72', '24', 'BE', 'Textile', '1958-07-30', 'Florida', 'University of Florida', '1962', '87', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('73', '25', '10', 'General', '1976-03-21', 'Idaho', 'University of Michigan', '1977', '58', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('74', '25', '12', 'Commerce', '1978-03-26', 'Oklahoma', 'University of Ohio', '1979', '98', 'A+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('75', '25', 'M.Com.', 'Business Economics', '1979-10-26', 'Mississippi', 'Stanford University', '1983', '67', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('76', '26', '10', 'General', '1976-03-15', 'Alabama', 'Harvard University', '1977', '87', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('77', '26', '12', 'Science', '1978-03-16', 'Alaska', 'Harvard University', '1979', '59', 'D');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('78', '26', 'BE', 'Environmental', '1979-10-26', 'Arizona', 'University of Chicago', '1983', '98', 'A+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('79', '27', '10', 'General', '1955-01-20', 'Alaska', 'California University', '1956', '97', 'A+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('80', '27', '12', 'Science', '1957-03-11', 'New York', 'University of Ohio', '1958', '78', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('81', '27', 'BE', 'Textile', '1958-07-30', 'Arkansas', 'University of Ohio', '1962', '89', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('82', '10', 'LLB', 'Business Law', '1983-10-06', 'New Mexico', 'California University', '1986', '86', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('83', '22', 'ME', 'Mechanical', '1962-04-10', 'Arizona', 'Columbia University', '1965', '67', 'C');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('84', '17', 'ME', 'Marine', '1981-10-26', 'Ohio', 'University of Ohio', '1984', '78', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('85', '12', 'ICWA', 'Cost Accounting', '1985-03-30', 'West Virginia', 'Harvard University', '1988', '81', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('86', '28', '10', 'General', '1976-03-21', 'Idaho', 'University of Michigan', '1977', '84', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('87', '29', '12', 'Commerce', '1978-03-26', 'Oklahoma', 'University of Ohio', '1979', '82', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('88', '29', '12', 'Business Economics', '1979-10-26', 'Mississippi', 'Stanford University', '1983', '80', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('89', '30', '10', 'General', '1976-03-15', 'Alabama', 'Harvard University', '1977', '87', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('90', '30', '12', 'Science', '1979-03-16', 'Alaska', 'Harvard University', '1980', '77', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('91', '30', 'BE', 'Environmental', '1980-10-26', 'Arizona', 'University of Chicago', '1984', '79', 'B+');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('92', '30', 'ME', 'Environmental', '1985-01-20', 'Alaska', 'California University', '1988', '82', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('93', '30', 'MBA', 'Finance', '1980-10-26', 'New York', 'University of Ohio', '1983', '85', 'A');



INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('1', '1', 'Running');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('2', '1', 'Knife making');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('3', '2', 'Reading');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('4', '2', 'Leather crafting');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('5', '2', 'Stamp Collection');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('6', '2', 'Magic');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('7', '3', 'Stamp Collection');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('8', '3', 'Magic');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('9', '4', 'Cricket');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('10', '4', 'Gaming');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('11', '5', 'Acting');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('12', '5', 'Puzzles');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('13', '6', 'Fashion');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('14', '6', 'Football');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('15', '7', 'Ice skating');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('16', '7', 'Running');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('17', '8', 'Writing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('18', '8', 'Swimming');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('19', '9', 'Swimming');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('20', '9', 'Puzzles');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('21', '10', 'Coin Collection');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('22', '10', 'Creative writing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('23', '11', 'Creative writing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('24', '11', 'Pet');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('25', '12', 'Football');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('26', '12', 'Fishkeeping');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('27', '13', 'Candle making');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('28', '13', 'Crossword puzzles');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('29', '14', 'Drama');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('30', '14', 'Singing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('31', '15', 'Fishkeeping');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('32', '15', 'Ice skating');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('33', '16', 'Running');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('34', '16', 'Creative writing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('35', '16', 'Pet');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('36', '16', 'Singing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('37', '17', 'Cross-stitch');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('38', '18', 'Cricket');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('39', '18', 'Creative writing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('40', '18', 'Fishkeeping');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('41', '19', 'dancing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('42', '19', 'cooking');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('43', '20', 'Reading Novels');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('44', '20', 'Listening music');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('45', '20', 'Pet');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('46', '21', 'Chess');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('47', '21', 'Dance');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('48', '21', 'Drama');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('49', '21', 'Singing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('50', '21', 'Fishkeeping');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('51', '21', 'Ice skating');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('52', '22', 'Dancing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('53', '22', 'Wildlife Photography');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('54', '22', 'Photography');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('55', '23', 'Traveling');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('56', '23', 'Photography');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('57', '24', 'Reading');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('58', '24', 'Blog writing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('59', '24', 'Creative writing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('60', '26', 'MAKING ARTWORKS');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('61', '26', 'LISTENING MUSIC');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('62', '27', 'Playing badminton');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('63', '27', 'Singing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('64', '27', 'Dancing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('65', '3', 'Stamp Collection');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('66', '4', 'Acting');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('67', '7', 'Pet');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('68', '8', 'Chess');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('69', '12', 'Ice skating');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('70', '19', 'Wildlife Photography');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('71', '20', 'Blog writing');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('72', '18', 'Fashion');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('73', '19', 'Football');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('74', '21', 'Fashion');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('75', '24', 'Football');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('76', '26', 'Acting');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('77', '19', 'Fashion');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('78', '24', 'Fashion');
INSERT INTO `nf2`.`n2hobbies` (`ID`, `EMPLOYEEID`, `NAME`) VALUES ('79', '12', 'Fashion');



INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('1', '1', 'Arjun', '1964-06-12', '1966-07-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('2', '1', 'Sai', '1966-07-13', '1970-07-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('3', '1', 'Dhruv', '1970-07-14', '1975-07-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('4', '1', 'Saleel', '1975-07-15', '1979-08-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('5', '1', 'Vrushali', '1979-08-13', '1983-08-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('6', '2', 'Sharmin', '1964-10-25', '1969-12-02', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('7', '2', 'Nitish', '1969-12-03', '1974-07-07', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('8', '2', 'Neel', '1974-07-08', '1979-02-21', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('9', '2', 'Deep', '1979-02-22', '1980-03-21', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('10', '2', 'Kaushal', '1980-03-22', '1983-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('11', '3', 'Natasha', '1964-10-25', '1969-12-02', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('12', '3', 'Bandish', '1969-12-03', '1974-07-07', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('13', '3', 'Sangita', '1974-07-08', '1979-02-21', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('14', '3', 'Supriya', '1979-02-22', '1980-03-21', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('15', '3', 'Ruhan', '1980-03-22', '1983-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('16', '4', 'Gau', '1965-10-31', '1970-05-11', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('17', '4', 'Bipin', '1970-05-12', '1975-07-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('18', '4', 'Leena', '1975-07-18', '1978-11-02', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('19', '4', 'Kabir', '1980-11-03', '1982-04-09', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('20', '4', 'Om', '1982-04-10', '1983-04-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('21', '4', 'Omkar', '1983-04-28', '1984-12-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('22', '5', 'Manish', '1965-01-12', '1969-01-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('23', '5', 'Manoj', '1969-01-13', '1972-09-05', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('24', '5', 'Aditi', '1972-09-06', '1977-11-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('25', '5', 'Varsha', '1977-11-14', '1981-12-31', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('26', '5', 'Monika', '1982-01-01', '1983-03-23', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('27', '5', 'Karishma', '1983-03-24', '1985-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('28', '6', 'Vrushali', '1965-12-01', '1973-02-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('29', '6', 'Sharmin', '1973-02-28', '1976-05-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('30', '6', 'Nitish', '1976-05-15', '1978-05-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('31', '6', 'Neel', '1978-04-17', '1982-01-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('32', '6', 'Deep', '1982-02-28', '1985-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('33', '7', 'Kaushal', '1960-12-14', '1963-07-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('34', '7', 'Natasha', '1963-07-14', '1968-08-20', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('35', '7', 'Nitish', '1968-08-21', '1972-11-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('36', '7', 'Sharmin', '1972-12-28', '1974-11-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('37', '7', 'Sharmin', '1974-11-15', '1980-02-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('38', '8', 'Bandish', '1960-12-29', '1967-12-29', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('39', '8', 'Bandish', '1968-01-01', '1970-04-02', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('40', '8', 'Om', '1970-04-03', '1977-07-07', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('41', '8', 'Omkar', '1977-07-08', '1979-07-19', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('42', '8', 'Manish', '1979-07-20', '1980-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('43', '9', 'Manoj', '1982-10-26', '1988-11-18', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('44', '9', 'Aditi', '1988-11-19', '1992-01-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('45', '9', 'Manoj', '1992-01-18', '1999-04-20', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('46', '9', 'Aditi', '1999-04-21', '2000-08-11', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('47', '9', 'Omkar', '2000-08-12', '2001-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('48', '10', 'Monika', '1983-10-26', '1988-03-06', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('49', '10', 'Monika', '1988-03-07', '1990-09-07', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('50', '10', 'Karishma', '1990-09-08', '1991-06-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('51', '10', 'Karishma', '1991-06-05', '2000-06-05', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('52', '10', 'Karishma', '2000-06-06', '2002-08-08', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('53', '10', 'Karishma', '2002-08-09', '2003-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('54', '11', 'Sharmin', '1984-10-30', '1987-11-29', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('55', '11', 'Sharmin', '1987-11-30', '1990-12-31', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('56', '11', 'Sharmin', '1991-01-01', '1998-05-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('57', '11', 'Nitish', '1998-05-28', '2001-05-28', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('58', '11', 'Nitish', '2001-05-29', '2002-03-31', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('59', '11', 'Sharmin', '2002-04-01', '2003-12-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('60', '12', 'Neel', '1984-11-30', '1990-08-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('61', '12', 'Neel', '1990-08-28', '1994-03-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('62', '12', 'Neel', '1994-03-17', '2001-03-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('63', '12', 'Deep', '2001-03-18', '2002-07-08', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('64', '12', 'Deep', '2002-07-09', '2004-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('65', '13', 'Divya', '1985-12-01', '1987-12-20', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('66', '13', 'Divya', '1987-12-21', '1992-08-26', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('67', '13', 'Divya', '1992-08-27', '2003-03-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('68', '13', 'Divya', '2003-03-18', '2005-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('69', '14', 'Ekta', '1986-12-15', '1989-02-23', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('70', '14', 'Ekta', '1989-02-24', '1999-04-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('71', '14', 'Ekta', '1999-04-15', '2004-03-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('72', '14', 'Ekta', '2004-03-17', '2006-02-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('73', '15', 'Falguni', '1987-12-30', '1994-06-26', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('74', '15', 'Gini', '1994-06-27', '2001-06-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('75', '15', 'Falguni', '2001-06-28', '2004-04-18', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('76', '15', 'Gini', '2004-04-19', '2007-02-28', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('77', '19', 'Sharmin', '1963-11-13', '1967-05-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('78', '19', 'Sharmin', '1967-05-14', '1971-04-24', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('79', '19', 'Bandish', '1971-04-25', '1979-07-15', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('80', '19', 'Bandish', '1979-07-16', '1980-09-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('81', '19', 'Sharmin', '1980-09-17', '1983-01-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('82', '22', 'Om', '1962-04-10', '1963-08-10', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('83', '22', 'Manish', '1963-08-11', '1967-01-15', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('84', '22', 'Manoj', '1967-01-16', '1972-02-26', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('85', '22', 'Aditi', '1972-02-27', '1974-10-23', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('86', '22', 'Manoj', '1974-10-24', '1979-04-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('87', '22', 'Aditi', '1979-05-14', '1981-06-09', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('88', '27', 'Omkar', '1962-07-30', '1964-08-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('89', '27', 'Monika', '1964-08-18', '1967-03-03', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('90', '27', 'Monika', '1967-03-04', '1974-11-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('91', '27', 'Karishma', '1974-11-05', '1980-12-24', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('92', '27', 'Karishma', '1980-12-25', '1981-09-28', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('93', '23', 'Sharmin', '1962-04-10', '1963-08-10', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('94', '23', 'Sharmin', '1963-08-11', '1967-01-15', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('95', '23', 'Bandish', '1967-01-16', '1972-02-26', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('96', '23', 'Bandish', '1972-02-27', '1974-10-23', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('97', '23', 'Om', '1974-10-24', '1979-04-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('98', '23', 'Omkar', '1979-05-14', '1981-06-09', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('99', '24', 'Manish', '1962-04-10', '1963-08-10', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('100', '24', 'Manoj', '1963-08-11', '1967-01-15', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('101', '24', 'Aditi', '1967-01-16', '1972-02-26', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('102', '24', 'Manoj', '1972-02-27', '1974-10-23', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('103', '24', 'Aditi', '1974-10-24', '1979-04-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('104', '24', 'Omkar', '1979-05-14', '1981-06-09', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('105', '20', 'Monika', '1962-07-30', '1964-08-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('106', '20', 'Monika', '1964-08-18', '1967-03-03', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('107', '20', 'Karishma', '1967-03-04', '1974-11-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('108', '20', 'Karishma', '1974-11-05', '1980-12-24', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('109', '20', 'Arjun', '1980-12-25', '1981-09-28', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('110', '17', 'Sai', '1982-10-26', '1988-11-18', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('111', '17', 'Dhruv', '1988-11-19', '1992-01-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('112', '17', 'Saleel', '1992-01-18', '1999-04-20', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('113', '17', 'Vrushali', '1999-04-21', '2000-08-11', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('114', '17', 'Arjun', '2000-08-12', '2001-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('115', '16', 'Sai', '1965-12-01', '1973-02-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('116', '16', 'Dhruv', '1973-02-28', '1976-05-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('117', '16', 'Saleel', '1976-05-15', '1978-05-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('118', '16', 'Vrushali', '1978-04-17', '1982-01-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('119', '16', 'Arjun', '1982-02-28', '1985-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('120', '18', 'Sangita', '1964-06-12', '1966-07-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('121', '18', 'Supriya', '1966-07-13', '1970-07-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('122', '18', 'Ruhan', '1970-07-14', '1975-07-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('123', '18', 'Gau', '1975-07-15', '1979-08-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('124', '18', 'Bipin', '1979-08-13', '1983-08-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('125', '25', 'Leena', '1983-10-26', '1988-03-06', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('126', '25', 'Kabir', '1988-03-07', '1990-09-07', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('127', '25', 'Sangita', '1990-09-08', '1991-06-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('128', '25', 'Supriya', '1991-06-05', '2000-06-05', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('129', '25', 'Ruhan', '2000-06-06', '2002-08-08', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('130', '25', 'Gau', '2002-08-09', '2003-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('131', '21', 'Bipin', '1984-11-30', '1990-08-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('132', '21', 'Leena', '1990-08-28', '1994-03-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('133', '21', 'Kabir', '1994-03-17', '2001-03-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('134', '21', 'Dhruv', '2001-03-18', '2002-07-08', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('135', '21', 'Saleel', '2002-07-09', '2004-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('136', '27', 'Vrushali', '1990-09-08', '1991-06-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('137', '27', 'Arjun', '1991-06-05', '2000-06-05', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('138', '27', 'Sangita', '2000-06-06', '2002-08-08', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('139', '27', 'Supriya', '2002-08-09', '2003-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('140', '26', 'Bipin', '1962-07-30', '1964-08-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('141', '26', 'Leena', '1964-08-18', '1967-03-03', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('142', '26', 'Kabir', '1967-03-04', '1974-11-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('143', '26', 'Dhruv', '1974-11-05', '1980-12-24', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `EMPLOYEER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('144', '26', 'Saleel', '1980-12-25', '1981-09-28', '');






-------------------------------------------------------------------

Drop table if exists N3SALARY;
Drop table if exists N3COMMISSION;
Drop table if exists N3Employee_Department;
Drop table if exists N3CONTACT;
Drop table if exists N3ADDRESS;
Drop table if exists N3QUALIFICATION;
Drop table if exists N3HOBBIES;
Drop table if exists N3JOBHISTORY;
Drop table if exists N3Employee;
Drop table if exists N3Department;
Drop table if exists N3CITY;
Drop table if exists N3DISTRICT;
Drop table if exists N3STATE;
Drop table if exists N3COUNTRY;

create table N3COUNTRY (
	ID int primary key,
	NAME varchar(10)
);

create table N3STATE (
	ID int primary key,
	COUNTRYID int,
	NAME varchar(10),
	foreign key(COUNTRYID) references N3COUNTRY(ID)
);

create table N3DISTRICT (
	ID int primary key,
	STATEID int,
	NAME varchar(10),
	foreign key(STATEID) references N3STATE(ID)
);

create table N3CITY (
	ID int primary key,
	DISTRICTD int,
	NAME varchar(10),
	foreign key(DISTRICTD) references N3DISTRICT(ID)
);


create table N3Employee (
	ID int primary key,
    FIRSTNAME varchar(12),
	LASTNAME  varchar(12),
	GENDER char (1),
	HIREDATE date
);

create table N3Department (
	ID int primary key,
	NAME varchar(12),
	LOCATION varchar(12)
);

create table N3Employee_Department (
	ID int primary key,
	DEPARTMENTID int,
	EMPLOYEEID int,
	FROMDATE date,
	TODATE date,
	foreign key(DEPARTMENTID) references N3Department(ID),
	foreign key(EMPLOYEEID) references N3Employee(ID)
);

create table N3SALARY (
	ID int primary key,
	EMPLOYEEID int,
	FROMDATE date,
	TODATE date,
	SALARY int,
	foreign key(EMPLOYEEID) references N3Employee(ID)
);

create table N3COMMISSION (
	ID int primary key,
	EMPLOYEEID int,
	FROMDATE date,
	TODATE date,
	COMMISSION int,
	foreign key(EMPLOYEEID) references N3Employee(ID)
);

create table N3CONTACT (
	ID int primary key,
	EMPLOYEEID int,
	NUMBER int,
	EMAILID varchar(30),
	foreign key(EMPLOYEEID) references N3Employee(ID)
);

create table N3ADDRESS (
	ID int primary key,
	EMPLOYEEID int,
	LINE1 varchar(40),
	LINE2 varchar(40),
	city varchar(20),
	pin int,
	foreign key(EMPLOYEEID) references N3Employee(ID)
);

create table N3QUALIFICATION (
	ID int primary key,
	EMPLOYEEID int,
	NAME varchar(20),
	ADDMISSIONYEAR DATE,
	INSTITUTE varchar(40),
	UNIVERSITY varchar(40),
	YEAROFPASSING INT,
	PERCENTAGE float(7,2),
	GRADE char(12),
	foreign key(EMPLOYEEID) references N3Employee(ID)
);
create table N3HOBBIES (
	ID int primary key,
	EMPLOYEEID int,
	NAME varchar(20),
	foreign key(EMPLOYEEID) references N3Employee(ID)
);

create table N3JOBHISTORY (
	ID int primary key,
	EMPLOYEEID int,
	EMPLOYEER varchar(20),
	FROMDATE date,
	TODATE date,
	NATURE varchar(20),
	foreign key(EMPLOYEEID) references N3Employee(ID)
);


INSERT INTO `n3country` (`ID`, `NAME`) VALUES ('1', 'USA');
INSERT INTO `n3country` (`ID`, `NAME`) VALUES ('2', 'INDIA');
INSERT INTO `n3country` (`ID`, `NAME`) VALUES ('3', 'UK');
INSERT INTO `n3country` (`ID`, `NAME`) VALUES ('4', 'France');
