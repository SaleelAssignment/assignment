drop schema if exists employee;
create schema if not exists employee;
use employee;

drop table if exists countries;
drop table if exists departments;
drop table if exists employees;
drop table if exists job_history;
drop table if exists jobs;
drop table if exists locations;
drop table if exists regions;


--
-- Table structure for table `countries`
-- 

CREATE TABLE IF NOT EXISTS `countries` (
  `COUNTRY_ID` varchar(2) NOT NULL,
  `COUNTRY_NAME` varchar(40) DEFAULT NULL,
  `REGION_ID` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`),
  KEY `COUNTR_REG_FK` (`REGION_ID`)
);

--
-- Dummy data for table `countries`
--

INSERT INTO `countries` (`COUNTRY_ID`, `COUNTRY_NAME`, `REGION_ID`) VALUES
('AR', 'Argentina', '2'),
('AU', 'Australia', '3'),
('BE', 'Belgium', '1'),
('BR', 'Brazil', '2'),
('CA', 'Canada', '2'),
('CH', 'Switzerland', '1'),
('CN', 'China', '3'),
('DE', 'Germany', '1'),
('DK', 'Denmark', '1'),
('EG', 'Egypt', '4'),
('FR', 'France', '1'),
('HK', 'HongKong', '3'),
('IL', 'Israel', '4'),
('IN', 'India', '3'),
('IT', 'Italy', '1'),
('JP', 'Japan', '3'),
('KW', 'Kuwait', '4'),
('MX', 'Mexico', '2'),
('NG', 'Nigeria', '4'),
('NL', 'Netherlands', '1'),
('SG', 'Singapore', '3'),
('UK', 'United Kingdom', '1'),
('US', 'United States of America', '2'),
('ZM', 'Zambia', '4'),
('ZW', 'Zimbabwe', '4');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `DEPARTMENT_ID` decimal(4,0) NOT NULL DEFAULT '0',
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `MANAGER_ID` decimal(6,0) DEFAULT NULL,
  `LOCATION_ID` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`),
  KEY `DEPT_MGR_FK` (`MANAGER_ID`),
  KEY `DEPT_LOCATION_IX` (`LOCATION_ID`)
);

--
-- Dummy data for table `departments`
--

INSERT INTO `departments` (`DEPARTMENT_ID`, `DEPARTMENT_NAME`, `MANAGER_ID`, `LOCATION_ID`) VALUES
('10', 'Administration', '200', '1700'),
('20', 'Marketing', '201', '1800'),
('30', 'Purchasing', '114', '1700'),
('40', 'Human Resources', '203', '2400'),
('50', 'Shipping', '121', '1500'),
('60', 'IT', '103', '1400'),
('70', 'Public Relations', '204', '2700'),
('80', 'Sales', '145', '2500'),
('90', 'Executive', '100', '1700'),
('100', 'Finance', '108', '1700'),
('110', 'Accounting', '205', '1700'),
('120', 'Treasury', '0', '1700'),
('130', 'Corporate Tax', '0', '1700'),
('140', 'Control And Credit', '0', '1700'),
('150', 'Shareholder Services', '0', '1700'),
('160', 'Benefits', '0', '1700'),
('170', 'Manufacturing', '0', '1700'),
('180', 'Construction', '0', '1700'),
('190', 'Contracting', '0', '1700'),
('200', 'Operations', '0', '1700'),
('210', 'IT Support', '0', '1700'),
('220', 'NOC', '0', '1700'),
('230', 'IT Helpdesk', '0', '1700'),
('240', 'Government Sales', '0', '1700'),
('250', 'Retail Sales', '0', '1700'),
('260', 'Recruiting', '0', '1700'),
('270', 'Payroll', '0', '1700');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL DEFAULT '0',
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MANAGER_ID` decimal(6,0) DEFAULT NULL,
  `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`),
  UNIQUE KEY `EMP_EMAIL_UK` (`EMAIL`),
  KEY `EMP_DEPARTMENT_IX` (`DEPARTMENT_ID`),
  KEY `EMP_JOB_IX` (`JOB_ID`),
  KEY `EMP_MANAGER_IX` (`MANAGER_ID`),
  KEY `EMP_NAME_IX` (`LAST_NAME`,`FIRST_NAME`)
);

--
-- Dummy data for table `employees`
--

INSERT INTO `employees` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `COMMISSION_PCT`, `MANAGER_ID`, `DEPARTMENT_ID`) VALUES
('100', 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', '24000.00', '0.00', '0', '90'),
('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', '17000.00', '0.00', '100', '90'),
('102', 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1987-06-19', 'AD_VP', '17000.00', '0.00', '100', '90'),
('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 'IT_PROG', '9000.00', '0.00', '102', '60'),
('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1987-06-21', 'IT_PROG', '6000.00', '0.00', '103', '60'),
('105', 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1987-06-22', 'IT_PROG', '4800.00', '0.00', '103', '60'),
('106', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1987-06-23', 'IT_PROG', '4800.00', '0.00', '103', '60'),
('107', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1987-06-24', 'IT_PROG', '4200.00', '0.00', '103', '60'),
('108', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1987-06-25', 'FI_MGR', '12000.00', '0.00', '101', '100'),
('109', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1987-06-26', 'FI_ACCOUNT', '9000.00', '0.00', '108', '100'),
('110', 'John', 'Chen', 'JCHEN', '515.124.4269', '1987-06-27', 'FI_ACCOUNT', '8200.00', '0.00', '108', '100'),
('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1987-06-28', 'FI_ACCOUNT', '7700.00', '0.00', '108', '100'),
('112', 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '1987-06-29', 'FI_ACCOUNT', '7800.00', '0.00', '108', '100'),
('113', 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1987-06-30', 'FI_ACCOUNT', '6900.00', '0.00', '108', '100'),
('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '1987-07-01', 'PU_MAN', '11000.00', '0.00', '100', '30'),
('115', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '1987-07-02', 'PU_CLERK', '3100.00', '0.00', '114', '30'),
('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '1987-07-03', 'PU_CLERK', '2900.00', '0.00', '114', '30'),
('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '1987-07-04', 'PU_CLERK', '2800.00', '0.00', '114', '30'),
('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '1987-07-05', 'PU_CLERK', '2600.00', '0.00', '114', '30'),
('119', 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '1987-07-06', 'PU_CLERK', '2500.00', '0.00', '114', '30'),
('120', 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '1987-07-07', 'ST_MAN', '8000.00', '0.00', '100', '50'),
('121', 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '1987-07-08', 'ST_MAN', '8200.00', '0.00', '100', '50'),
('122', 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '1987-07-09', 'ST_MAN', '7900.00', '0.00', '100', '50'),
('123', 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '1987-07-10', 'ST_MAN', '6500.00', '0.00', '100', '50'),
('124', 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '1987-07-11', 'ST_MAN', '5800.00', '0.00', '100', '50'),
('125', 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '1987-07-12', 'ST_CLERK', '3200.00', '0.00', '120', '50'),
('126', 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '1987-07-13', 'ST_CLERK', '2700.00', '0.00', '120', '50'),
('127', 'James', 'Landry', 'JLANDRY', '650.124.1334', '1987-07-14', 'ST_CLERK', '2400.00', '0.00', '120', '50'),
('128', 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '1987-07-15', 'ST_CLERK', '2200.00', '0.00', '120', '50'),
('129', 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '1987-07-16', 'ST_CLERK', '3300.00', '0.00', '121', '50'),
('130', 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '1987-07-17', 'ST_CLERK', '2800.00', '0.00', '121', '50'),
('131', 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '1987-07-18', 'ST_CLERK', '2500.00', '0.00', '121', '50'),
('132', 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '1987-07-19', 'ST_CLERK', '2100.00', '0.00', '121', '50'),
('133', 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '1987-07-20', 'ST_CLERK', '3300.00', '0.00', '122', '50'),
('134', 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '1987-07-21', 'ST_CLERK', '2900.00', '0.00', '122', '50'),
('135', 'Ki', 'Gee', 'KGEE', '650.127.1734', '1987-07-22', 'ST_CLERK', '2400.00', '0.00', '122', '50'),
('136', 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '1987-07-23', 'ST_CLERK', '2200.00', '0.00', '122', '50'),
('137', 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '1987-07-24', 'ST_CLERK', '3600.00', '0.00', '123', '50'),
('138', 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '1987-07-25', 'ST_CLERK', '3200.00', '0.00', '123', '50'),
('139', 'John', 'Seo', 'JSEO', '650.121.2019', '1987-07-26', 'ST_CLERK', '2700.00', '0.00', '123', '50'),
('140', 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '1987-07-27', 'ST_CLERK', '2500.00', '0.00', '123', '50'),
('141', 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '1987-07-28', 'ST_CLERK', '3500.00', '0.00', '124', '50'),
('142', 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '1987-07-29', 'ST_CLERK', '3100.00', '0.00', '124', '50'),
('143', 'Randall', 'Matos', 'RMATOS', '650.121.2874', '1987-07-30', 'ST_CLERK', '2600.00', '0.00', '124', '50'),
('144', 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '1987-07-31', 'ST_CLERK', '2500.00', '0.00', '124', '50'),
('145', 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '1987-08-01', 'SA_MAN', '14000.00', '0.40', '100', '80'),
('146', 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '1987-08-02', 'SA_MAN', '13500.00', '0.30', '100', '80'),
('147', 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '1987-08-03', 'SA_MAN', '12000.00', '0.30', '100', '80'),
('148', 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '1987-08-04', 'SA_MAN', '11000.00', '0.30', '100', '80'),
('149', 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '1987-08-05', 'SA_MAN', '10500.00', '0.20', '100', '80'),
('150', 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '1987-08-06', 'SA_REP', '10000.00', '0.30', '145', '80'),
('151', 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '1987-08-07', 'SA_REP', '9500.00', '0.25', '145', '80'),
('152', 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '1987-08-08', 'SA_REP', '9000.00', '0.25', '145', '80'),
('153', 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '1987-08-09', 'SA_REP', '8000.00', '0.20', '145', '80'),
('154', 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '1987-08-10', 'SA_REP', '7500.00', '0.20', '145', '80'),
('155', 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '1987-08-11', 'SA_REP', '7000.00', '0.15', '145', '80'),
('156', 'Janette', 'King', 'JKING', '011.44.1345.429268', '1987-08-12', 'SA_REP', '10000.00', '0.35', '146', '80'),
('157', 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '1987-08-13', 'SA_REP', '9500.00', '0.35', '146', '80'),
('158', 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '1987-08-14', 'SA_REP', '9000.00', '0.35', '146', '80'),
('159', 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '1987-08-15', 'SA_REP', '8000.00', '0.30', '146', '80'),
('160', 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '1987-08-16', 'SA_REP', '7500.00', '0.30', '146', '80'),
('161', 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '1987-08-17', 'SA_REP', '7000.00', '0.25', '146', '80'),
('162', 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '1987-08-18', 'SA_REP', '10500.00', '0.25', '147', '80'),
('163', 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '1987-08-19', 'SA_REP', '9500.00', '0.15', '147', '80'),
('164', 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '1987-08-20', 'SA_REP', '7200.00', '0.10', '147', '80'),
('165', 'David', 'Lee', 'DLEE', '011.44.1346.529268', '1987-08-21', 'SA_REP', '6800.00', '0.10', '147', '80'),
('166', 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '1987-08-22', 'SA_REP', '6400.00', '0.10', '147', '80'),
('167', 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '1987-08-23', 'SA_REP', '6200.00', '0.10', '147', '80'),
('168', 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '1987-08-24', 'SA_REP', '11500.00', '0.25', '148', '80'),
('169', 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '1987-08-25', 'SA_REP', '10000.00', '0.20', '148', '80'),
('170', 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '1987-08-26', 'SA_REP', '9600.00', '0.20', '148', '80'),
('171', 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '1987-08-27', 'SA_REP', '7400.00', '0.15', '148', '80'),
('172', 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '1987-08-28', 'SA_REP', '7300.00', '0.15', '148', '80'),
('173', 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '1987-08-29', 'SA_REP', '6100.00', '0.10', '148', '80'),
('174', 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '1987-08-30', 'SA_REP', '11000.00', '0.30', '149', '80'),
('175', 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '1987-08-31', 'SA_REP', '8800.00', '0.25', '149', '80'),
('176', 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '1987-09-01', 'SA_REP', '8600.00', '0.20', '149', '80'),
('177', 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '1987-09-02', 'SA_REP', '8400.00', '0.20', '149', '80'),
('178', 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '1987-09-03', 'SA_REP', '7000.00', '0.15', '149', '0'),
('179', 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '1987-09-04', 'SA_REP', '6200.00', '0.10', '149', '80'),
('180', 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '1987-09-05', 'SH_CLERK', '3200.00', '0.00', '120', '50'),
('181', 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '1987-09-06', 'SH_CLERK', '3100.00', '0.00', '120', '50'),
('182', 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '1987-09-07', 'SH_CLERK', '2500.00', '0.00', '120', '50'),
('183', 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '1987-09-08', 'SH_CLERK', '2800.00', '0.00', '120', '50'),
('184', 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '1987-09-09', 'SH_CLERK', '4200.00', '0.00', '121', '50'),
('185', 'Alexis', 'Bull', 'ABULL', '650.509.2876', '1987-09-10', 'SH_CLERK', '4100.00', '0.00', '121', '50'),
('186', 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '1987-09-11', 'SH_CLERK', '3400.00', '0.00', '121', '50'),
('187', 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '1987-09-12', 'SH_CLERK', '3000.00', '0.00', '121', '50'),
('188', 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '1987-09-13', 'SH_CLERK', '3800.00', '0.00', '122', '50'),
('189', 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '1987-09-14', 'SH_CLERK', '3600.00', '0.00', '122', '50'),
('190', 'Timothy', 'Gates', 'TGATES', '650.505.3876', '1987-09-15', 'SH_CLERK', '2900.00', '0.00', '122', '50'),
('191', 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '1987-09-16', 'SH_CLERK', '2500.00', '0.00', '122', '50'),
('192', 'Sarah', 'Bell', 'SBELL', '650.501.1876', '1987-09-17', 'SH_CLERK', '4000.00', '0.00', '123', '50'),
('193', 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '1987-09-18', 'SH_CLERK', '3900.00', '0.00', '123', '50'),
('194', 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '1987-09-19', 'SH_CLERK', '3200.00', '0.00', '123', '50'),
('195', 'Vance', 'Jones', 'VJONES', '650.501.4876', '1987-09-20', 'SH_CLERK', '2800.00', '0.00', '123', '50'),
('196', 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '1987-09-21', 'SH_CLERK', '3100.00', '0.00', '124', '50'),
('197', 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '1987-09-22', 'SH_CLERK', '3000.00', '0.00', '124', '50'),
('198', 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '1987-09-23', 'SH_CLERK', '2600.00', '0.00', '124', '50'),
('199', 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '1987-09-24', 'SH_CLERK', '2600.00', '0.00', '124', '50'),
('200', 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '1987-09-25', 'AD_ASST', '4400.00', '0.00', '101', '10'),
('201', 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '1987-09-26', 'MK_MAN', '13000.00', '0.00', '100', '20'),
('202', 'Pat', 'Fay', 'PFAY', '603.123.6666', '1987-09-27', 'MK_REP', '6000.00', '0.00', '201', '20'),
('203', 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '1987-09-28', 'HR_REP', '6500.00', '0.00', '101', '40'),
('204', 'Hermann', 'Baer', 'HBAER', '515.123.8888', '1987-09-29', 'PR_REP', '10000.00', '0.00', '101', '70'),
('205', 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '1987-09-30', 'AC_MGR', '12000.00', '0.00', '101', '110'),
('206', 'William', 'Gietz', 'WGIETZ', '515.123.8181', '1987-10-01', 'AC_ACCOUNT', '8300.00', '0.00', '205', '110');

-- --------------------------------------------------------

--
-- Table structure for table `job_history`
--

CREATE TABLE IF NOT EXISTS `job_history` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`,`START_DATE`),
  KEY `JHIST_DEPARTMENT_IX` (`DEPARTMENT_ID`),
  KEY `JHIST_EMPLOYEE_IX` (`EMPLOYEE_ID`),
  KEY `JHIST_JOB_IX` (`JOB_ID`)
);

--
-- Dummy data for table `job_history`
--

INSERT INTO `job_history` (`EMPLOYEE_ID`, `START_DATE`, `END_DATE`, `JOB_ID`, `DEPARTMENT_ID`) VALUES
('102', '1993-01-13', '1998-07-24', 'IT_PROG', '60'),
('101', '1989-09-21', '1993-10-27', 'AC_ACCOUNT', '110'),
('101', '1993-10-28', '1997-03-15', 'AC_MGR', '110'),
('201', '1996-02-17', '1999-12-19', 'MK_REP', '20'),
('114', '1998-03-24', '1999-12-31', 'ST_CLERK', '50'),
('122', '1999-01-01', '1999-12-31', 'ST_CLERK', '50'),
('200', '1987-09-17', '1993-06-17', 'AD_ASST', '90'),
('176', '1998-03-24', '1998-12-31', 'SA_REP', '80'),
('176', '1999-01-01', '1999-12-31', 'SA_MAN', '80'),
('200', '1994-07-01', '1998-12-31', 'AC_ACCOUNT', '90'),
('0', '0000-00-00', '0000-00-00', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `JOB_ID` varchar(10) NOT NULL DEFAULT '',
  `JOB_TITLE` varchar(35) NOT NULL,
  `MIN_SALARY` decimal(6,0) DEFAULT NULL,
  `MAX_SALARY` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
);

--
-- Dummy data for table `jobs`
--

INSERT INTO `jobs` (`JOB_ID`, `JOB_TITLE`, `MIN_SALARY`, `MAX_SALARY`) VALUES
('AD_PRES', 'President', '20000', '40000'),
('AD_VP', 'Administration Vice President', '15000', '30000'),
('AD_ASST', 'Administration Assistant', '3000', '6000'),
('FI_MGR', 'Finance Manager', '8200', '16000'),
('FI_ACCOUNT', 'Accountant', '4200', '9000'),
('AC_MGR', 'Accounting Manager', '8200', '16000'),
('AC_ACCOUNT', 'Public Accountant', '4200', '9000'),
('SA_MAN', 'Sales Manager', '10000', '20000'),
('SA_REP', 'Sales Representative', '6000', '12000'),
('PU_MAN', 'Purchasing Manager', '8000', '15000'),
('PU_CLERK', 'Purchasing Clerk', '2500', '5500'),
('ST_MAN', 'Stock Manager', '5500', '8500'),
('ST_CLERK', 'Stock Clerk', '2000', '5000'),
('SH_CLERK', 'Shipping Clerk', '2500', '5500'),
('IT_PROG', 'Programmer', '4000', '10000'),
('MK_MAN', 'Marketing Manager', '9000', '15000'),
('MK_REP', 'Marketing Representative', '4000', '9000'),
('HR_REP', 'Human Resources Representative', '4000', '9000'),
('PR_REP', 'Public Relations Representative', '4500', '10500');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `LOCATION_ID` decimal(4,0) NOT NULL DEFAULT '0',
  `STREET_ADDRESS` varchar(40) DEFAULT NULL,
  `POSTAL_CODE` varchar(12) DEFAULT NULL,
  `CITY` varchar(30) NOT NULL,
  `STATE_PROVINCE` varchar(25) DEFAULT NULL,
  `COUNTRY_ID` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`),
  KEY `LOC_CITY_IX` (`CITY`),
  KEY `LOC_COUNTRY_IX` (`COUNTRY_ID`),
  KEY `LOC_STATE_PROVINCE_IX` (`STATE_PROVINCE`)
);

--
-- Dummy data for table `locations`
--

INSERT INTO `locations` (`LOCATION_ID`, `STREET_ADDRESS`, `POSTAL_CODE`, `CITY`, `STATE_PROVINCE`, `COUNTRY_ID`) VALUES
('1000', '1297 Via Cola di Rie', '989', 'Roma', '', 'IT'),
('1100', '93091 Calle della Testa', '10934', 'Venice', '', 'IT'),
('1200', '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'),
('1300', '9450 Kamiya-cho', '6823', 'Hiroshima', '', 'JP'),
('1400', '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
('1500', '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
('1600', '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'),
('1700', '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
('1800', '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
('1900', '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'),
('2000', '40-5-12 Laogianggen', '190518', 'Beijing', '', 'CN'),
('2100', '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'),
('2200', '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'),
('2300', '198 Clementi North', '540198', 'Singapore', '', 'SG'),
('2400', '8204 Arthur St', '', 'London', '', 'UK'),
('2500', '"Magdalen Centre', ' The Oxford ', 'OX9 9ZB', 'Oxford', 'Ox'),
('2600', '9702 Chester Road', '9629850293', 'Stretford', 'Manchester', 'UK'),
('2700', 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'),
('2800', 'Rua Frei Caneca 1360', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'),
('2900', '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'),
('3000', 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'),
('3100', 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'),
('3200', 'Mariano Escobedo 9991', '11932', 'Mexico City', '"Distrito Federal', '"');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `REGION_ID` decimal(5,0) NOT NULL,
  `REGION_NAME` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`REGION_ID`),
  UNIQUE KEY `sss` (`REGION_NAME`)
);

--
-- Dummy data for table `regions`
--

INSERT INTO `regions` (`REGION_ID`, `REGION_NAME`) VALUES
('1', 'Europe'),
('2', 'Americas'),
('3', 'Asia'),
('4', 'Middle East and Africa');



--
-- Assignment
-- 


1. Write a query to display the names (first_name, last_name) using alias name "First Name", "Last Name".
2. Write a query to get unique department ID from employee table.
3. Write a query to get all employee details from the employee table order by first name, descending.
4. Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).
5. Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.
6. Write a query to get the total salaries payable to employees.
7. Write a query to get the maximum and minimum salary from employees table.
8. Write a query to get the average salary and number of employees in the employees table.
9. Write a query to get the number of employees working with the company.
10. Write a query to get the number of jobs available in the employees table.
11. Write a query get all first name from employees table in upper case.
12. Write a query to get the first 3 characters of first name from employees table.
13. Write a query to calculate 171*214+625.
14. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
15. Write a query to get first name from employees table after removing white spaces from both side.
16. Write a query to get the length of the employee names (first_name, last_name) from employees table. 
17. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) whose salary is more than 15000.
18. Write a query to select first 10 records from a table.
19. Write a query to get monthly salary (round 2 decimal places) of each and every employee. (Note : Assume the salary field 	provides the 'annual salary' information.)
20. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range    $ 10,000 through $15,000.
21. Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in    ascending order.
22. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range    $10,000 through $15,000 and are in department 30 or 100.
23. Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987.
24. Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
25. Write a query to display the last name, job, and salary for all employees whose job is that of a "Programmer" or a       
    "Shipping Clerk", and whose salary is not equal to $4,500, $10,000, or $15,000.
26. Write a query to display the last name of employees whose names have exactly 6 characters.
27. Write a query to display the last name of employees having 'e' as the third character.
28. Write a query to display the jobs/designations available in the employees table.
29. Write a query to display the name (first_name, last_name), salary and PF (15% of salary) of all employees.
30. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
31. Write a query to list the number of jobs available in the employees table.
32. Write a query to get the total salaries payable to employees.
33. Write a query to get the minimum salary from employees table. 
34. Write a query to get the maximum salary of an employee working as a Programmer.
35. Write a query to get the average salary and number of employees working the department 90.
36. Write a query to get the highest, lowest, sum, and average salary of all employees.
37. Write a query to get the number of employees with the same job.
38. Write a query to get the difference between the highest and lowest salaries.
39. Write a query to get the department ID and the total salary payable in each department.
40. Write a query to get the average salary for each job ID excluding programmer.
41. Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90  only.
42. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000. 
43. Write a query to get the average salary for all departments employing more than 10 employees.
44. Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose last_name='Bull'.
45. Write a query to find the name (first_name, last_name) of all employees who works in the IT department. 
46. Write a query to find the name (first_name, last_name) of the employees who are working in a USA based department.
47. Write a query to find the name (first_name, last_name) of the employees who are managers.
48. Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary.
49.  Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the average salary and works in any of the IT departments.
50. Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the earning of Mr. Bell. 
51. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments. (Use NATURAL JOIN.)
52. Write a query to find the name (first_name, last name), department ID and name of all the employees. 
53. Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London. 
54. Write a query to find the employee id, employee name (last_name) along with their manager_id and managers name (last_name). 
55. Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.
56. Write a query to get the department name and number of employees in the department.
57. Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90. (hnt: use jobs and job_history tables)
58. Write a query to display the department name, manager name, and city.
59. Write a query to display the job title and average salary of employees.
60. Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job (hint: use employees and job tables).
61. Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30'
62. Write a query to get the firstname, lastname who joined in the month of June.
63. Write a query to get the years in which more than 10 employees joined.
64. Write a query to get first name of employees who joined in 1987.
65. Write a query to get the department ID, year, and number of employees joined.
66. Write a query to get the job_id and related employees id.
	
	output must be as follows
	
	job_id	      Employees ID
	AC_ACCOUNT	  206
	AC_MGR	      205
	AD_ASST	      200
    AD_PRES	      100
    AD_VP	      101,102
    FI_ACCOUNT	  110,113,111,109,112
	
67. Write a query to update the portion of the phone_number in the employees table, within the phone number the substring '124' will be replaced by '999'.
68. Write a query to get the details of the employees where the length of the first name greater than or equal to 8.
69. Write a query to display leading zeros before maximum and minimum salary.
70. Write a query to append '@gmail.com' to email field.
71. Write a query to get the employee id, first name and hire month.
72. Write a query to get the employee id, email id (discard the last four characters).
73. Write a query to extract the last 4 character of phone numbers.
74. Write a query to get the locations that have minimum street length.
75. Write a query to display the length of first name for employees where last name contain character 'c' after 2nd position.
76. Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. Give each column an appropriate label. Sort the results by the employees first names.
77. Write a query to display the first name and salary for all employees. Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY. 
78. Write a query to display the employees details who are hired seventh month in any year.
79. Write a query to display the employees details who are hired on seventh day of any month.
80. Write a query to display the employees details who is getting minimum salary.



--
-- Assignment Solution
-- 


1. SELECT first_name "First Name",  last_name "Last Name" FROM employees;
2. SELECT DISTINCT department_id FROM employees;
3. SELECT * FROM employees ORDER BY first_name DESC;
4. SELECT first_name, last_name, salary, salary*.15 PF FROM employees;
5. SELECT employee_id, first_name, last_name, salary FROM employees ORDER BY salary;
6. SELECT SUM(salary) FROM employees;
7. SELECT MAX(salary), MIN(salary) FROM employees;
8. SELECT AVG(salary), COUNT(*) FROM employees;
9. SELECT COUNT(*) FROM employees;
10. SELECT COUNT(DISTINCT job_id) FROM employees;
11. SELECT UPPER(first_name) FROM employees;
12. SELECT SUBSTRING(first_name,1,3) FROM employees;
13. SELECT 171*214+625 Result;
14. SELECT  CONCAT(first_name,' ', last_name) 'Employee Name' FROM employees;
15. SELECT TRIM(first_name) FROM employees;
16. SELECT first_name,last_name, LENGTH(first_name)+LENGTH(last_name)  'Length of  Names' FROM employees;
17. SELECT  CONCAT(first_name,' ', last_name) 'Employee Name' FROM employees where salary > 15000;
18. SELECT employee_id, first_name FROM employees  LIMIT 10;
19. SELECT first_name, last_name, round(salary/12,2) as 'Monthly Salary' FROM employees;
20. SELECT first_name, last_name, salary FROM employees WHERE salary NOT BETWEEN 10000 AND 15000;
21. SELECT first_name, last_name, department_id FROM employees WHERE department_id IN (30, 100) ORDER BY  department_id  ASC;
22. SELECT first_name, last_name, salary, department_id FROM employees WHERE salary NOT BETWEEN 10000 AND 15000 AND 
    department_id IN (30, 100);
23. SELECT first_name, last_name, hire_date FROM employees WHERE YEAR(hire_date)  = 1987;
24. SELECT first_name FROM employees WHERE first_name LIKE '%b%' AND first_name LIKE '%c%';
25. SELECT last_name, job_id, salary FROM employees WHERE job_id IN ('IT_PROG', 'SH_CLERK') AND salary NOT IN (4500, 10000,   15000);
26. SELECT last_name FROM employees WHERE length(last_name) = 6;
27. SELECT last_name FROM employees WHERE last_name LIKE '__e%';
28. SELECT DISTINCT job_id  FROM employees;
29. SELECT first_name, last_name, salary, salary*.15 PF from employees;
30. SELECT * FROM employees WHERE last_name IN('JONES', 'BLAKE', 'SCOTT', 'KING', 'FORD');
31. SELECT COUNT(DISTINCT job_id) FROM employees;
32. SELECT SUM(salary) FROM employees;
33. SELECT MIN(salary) FROM employees;
34. SELECT MAX(salary) FROM employees WHERE job_id = 'IT_PROG';
35. SELECT AVG(salary),count(*) FROM employees WHERE department_id = 90;
36. SELECT MAX(salary) 'Maximum', MIN(salary) 'Minimum', SUM(salary) 'Sum', AVG(salary) 'Average' FROM employees;
37. SELECT job_id, COUNT(*) FROM employees GROUP BY job_id;
38. SELECT MAX(salary) - MIN(salary) DIFFERENCE FROM employees;
39. SELECT department_id, SUM(salary) FROM employees GROUP BY department_id;
40. SELECT job_id, AVG(salary) FROM employees WHERE job_id <> 'IT_PROG' GROUP BY job_id;
41. SELECT job_id, SUM(salary), AVG(salary), MAX(salary), MIN(salary) FROM employees WHERE department_id = '90' GROUP BY   job_id;
42. SELECT job_id, MAX(salary) FROM employees GROUP BY job_id HAVING MAX(salary) >= 4000;
43. SELECT department_id, AVG(salary), COUNT(*) FROM employees GROUP BY department_idHAV ING COUNT(*) > 10;
44. SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees WHERE SALARY > (SELECT salary FROM employees WHERE last_name = 'Bull');
45. SELECT first_name, last_name FROM employees WHERE department_id IN (SELECT department_id FROM departments WHERE department_name='IT');
46. select count(*) from employees, departments, locations where employees.DEPARTMENT_ID = departments.DEPARTMENT_ID and departments.LOCATION_ID = locations.LOCATION_ID and locations.COUNTRY_ID = 'US';
47. SELECT first_name, last_name FROM employees WHERE (employee_id IN (SELECT manager_id FROM employees));
48. SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
49. select * from employees where salary > (select avg(salary) from employees where DEPARTMENT_ID in (SELECT DEPARTMENT_ID FROM db1.departments where DEPARTMENT_NAME like 'it%'));
50. SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name = 'Bell') ORDER BY first_name;
51. SELECT location_id, street_address, city, state_province, country_name FROM locations NATURAL JOIN countries;
52. SELECT first_name, last_name, department_id, department_name FROM employees JOIN departments USING (department_id);
53. select employees.* from employees, departments, locations where employees.DEPARTMENT_ID = departments.DEPARTMENT_ID and departments.LOCATION_ID = locations.LOCATION_ID and city = 'London';
54. SELECT e.employee_id 'Emp_Id', e.last_name 'Employee', m.employee_id 'Mgr_Id', m.last_name 'Manager' FROM employees e, employees m where e.manager_id = m.employee_id;
55. select * from employees where hire_date > (select hire_date from employees where last_name = 'Jones')
56. SELECT department_name AS 'Department Name', COUNT(*) AS 'No of Employees' FROM departments, employees where employees.department_id = departments.department_id GROUP BY department_name ORDER BY department_name;
57. SELECT employee_id, job_title, end_date-start_date Days FROM jobs, job_history where  jobs.JOB_ID=job_history.JOB_ID and department_id=90;
58. SELECT d.department_id, d.department_name, d.manager_id, e.first_name FROM departments d, employees e where d.manager_id = e.employee_id;
59. SELECT job_title, AVG(salary) FROM employees NATURAL JOIN jobs GROUP BY job_title;
60. SELECT job_title, first_name, salary-min_salary 'Salary - Min_Salary' FROM employees NATURAL JOIN jobs;
61. SELECT FIRST_NAME, HIRE_DATE FROM employees WHERE HIRE_DATE BETWEEN '1987-06-01' AND '1987-07-30';
62. SELECT first_name, last_name FROM employees WHERE monthname(HIRE_DATE) =  'June';
63. SELECT year(HIRE_DATE) FROM employees GROUP BY year(HIRE_DATE) HAVING COUNT(EMPLOYEE_ID) > 10;
64. SELECT FIRST_NAME, HIRE_DATE FROM employees WHERE YEAR(HIRE_DATE)=1987;
65. SELECT DEPARTMENT_ID, year(HIRE_DATE), COUNT(EMPLOYEE_ID) FROM employees GROUP BY DEPARTMENT_ID ORDER BY DEPARTMENT_ID;
66. SELECT job_id, GROUP_CONCAT(employee_id) 'Employees ID' FROM employees GROUP BY job_id;
67. UPDATE employees SET phone_number = REPLACE(phone_number, '124', '999') WHERE phone_number LIKE '%124%';
68. SELECT * FROM employees WHERE LENGTH(first_name) >= 8;
69. SELECT job_id,  LPAD( max_salary, 7, '0') ' Max Salary', LPAD( min_salary, 7, '0') ' Min Salary' FROM jobs;
70. UPDATE employees SET email = CONCAT(email, '@gmail.com');
71. SELECT employee_id, first_name, MID(hire_date, 6, 2) as hire_month FROM employees;
72. SELECT email, substr(email,1, length(email) - 4) FROM db1.employees ;
73. SELECT RIGHT(phone_number, 4) as 'Ph.No.' FROM employees;
74. SELECT * FROM locations WHERE LENGTH(street_address) <= (SELECT  MIN(LENGTH(street_address)) FROM locations);
75. SELECT first_name, last_name FROM employees WHERE INSTR(last_name,'C') > 2;
76. SELECT first_name "Name", LENGTH(first_name) "Length" FROM employees WHERE first_name LIKE 'J%' OR first_name LIKE 'M%' OR first_name LIKE 'A%' ORDER BY first_name ;
77. SELECT first_name, LPAD(salary, 10, '$') SALARY FROM employees;
78. SELECT * FROM employees where month(hire_date) = 7;
79. SELECT * FROM employees where day(hire_date) = 7;
80. select * from employees where salary = (select min(salary) from employees);

















