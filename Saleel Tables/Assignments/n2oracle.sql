Drop table N2SALARY;   
Drop table N2COMMISSION;
Drop table N2Employee_Department;
Drop table N2CONTACT;
Drop table N2ADDRESS;
Drop table N2QUALIFICATION;
Drop table N2HOBBIES;
Drop table N2JOBHISTORY;
Drop table N2Employee;
Drop table N2Department;

create table N2Employee (
	ID int primary key,
    FIRSTNAME varchar2(20),
	LASTNAME  varchar2(20),
	GENDER char (1),
	HIREDATE date
);


create table N2Department (
	ID int primary key,
	NAME varchar2(20),
	LOCATION varchar2(20)
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
	PHONENUMBER INT,
	EMAILID varchar2(40),
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2ADDRESS (
	ID int primary key,
	EMPLOYEEID int,
	LINE1 varchar2(40),
	LINE2 varchar2(40),
	city varchar2(20),
	pin int,
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2QUALIFICATION (
	ID int primary key,
	EMPLOYEEID int,
	NAME varchar2(10),
	Stream varchar2(18),
	ADDMISSIONYEAR date,
	INSTITUTE varchar2(15),
	UNIVERSITY varchar2(25),
	YEAROFPASSING int,
	PERCENTAGE float,
	GRADE char(6),
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2HOBBIES (
	ID int primary key,
	EMPLOYEEID int,
	NAME varchar2(25),
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2JOBHISTORY (
	ID int primary key,
	EMPLOYEEID int,
	EMPLOYEER varchar2(20),
	FROMDATE date,
	TODATE date,
	NATURE varchar2(50),
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

insert all

select * from dual;


