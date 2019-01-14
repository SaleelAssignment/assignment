DROP TABLE IF EXISTS  ITEM;
DROP TABLE IF EXISTS  PRICE;
DROP TABLE IF EXISTS  PRODUCT;
DROP TABLE IF EXISTS  ORD;
DROP TABLE IF EXISTS  CUSTOMER;

DROP TABLE IF EXISTS  MENUCARD;
DROP TABLE IF EXISTS  SOFTDRINK;

DROP TABLE IF EXISTS  BOOK;
DROP TABLE IF EXISTS  AvailableIN;

DROP TABLE IF EXISTS  OLDBOOK;
DROP TABLE IF EXISTS  NEWBOOK;

DROP TABLE IF EXISTS  ACTOR;
DROP TABLE IF EXISTS  MOVIE;
DROP TABLE IF EXISTS  ACTOR_MOVIE;

create table actor (
	actorid int primary key, 
	name varchar(20),
	gender char(1),
	rating int
);

INSERT INTO `db3`.`actor` (`actorid`, `name`, `gender`, `rating`) VALUES ('1', 'Amitabh Bachchan','M',1);
INSERT INTO `db3`.`actor` (`actorid`, `name`, `gender`, `rating`) VALUES ('2', 'Akshay Kumar','M',2);
INSERT INTO `db3`.`actor` (`actorid`, `name`, `gender`, `rating`) VALUES ('3', 'Salman Khan','M',4);
INSERT INTO `db3`.`actor` (`actorid`, `name`, `gender`, `rating`) VALUES ('4', 'Ajay Devgn','M',3);
INSERT INTO `db3`.`actor` (`actorid`, `name`, `gender`, `rating`) VALUES ('5', 'Deepika Padukone','F',3);
INSERT INTO `db3`.`actor` (`actorid`, `name`, `gender`, `rating`) VALUES ('6', 'Kajol','F',2);
INSERT INTO `db3`.`actor` (`actorid`, `name`, `gender`, `rating`) VALUES ('7', 'Madhuri Dixit','F',1);


create table movie (
	movieid int primary key, 
	name varchar(20), 
	release_date date
);

INSERT INTO `db3`.`movie` (`movieid`, `name`, `release_date`) VALUES ('10', 'Movie1', '1980-07-15');
INSERT INTO `db3`.`movie` (`movieid`, `name`, `release_date`) VALUES ('20', 'Movie2', '1981-04-20');
INSERT INTO `db3`.`movie` (`movieid`, `name`, `release_date`) VALUES ('30', 'Movie3', '1981-05-05');
INSERT INTO `db3`.`movie` (`movieid`, `name`, `release_date`) VALUES ('40', 'Movie4', '1982-09-22');
INSERT INTO `db3`.`movie` (`movieid`, `name`, `release_date`) VALUES ('50', 'Movie5', '1982-02-28');
INSERT INTO `db3`.`movie` (`movieid`, `name`, `release_date`) VALUES ('60', 'Movie6', '1981-07-15');
INSERT INTO `db3`.`movie` (`movieid`, `name`, `release_date`) VALUES ('70', 'Movie7', '1982-09-22');
INSERT INTO `db3`.`movie` (`movieid`, `name`, `release_date`) VALUES ('80', 'Movie8', '1982-02-28');
INSERT INTO `db3`.`movie` (`movieid`, `name`, `release_date`) VALUES ('90', 'Movie9', '1980-07-23');
INSERT INTO `db3`.`movie` (`movieid`, `name`, `release_date`) VALUES ('100', 'Movie10', '1980-07-15');



create table actor_movie (
	actorid int, 
	movieid int
);

insert into actor_movie values(1,10);
insert into actor_movie values(2,10);
insert into actor_movie values(5,10);
insert into actor_movie values(6,10);
insert into actor_movie values(3,20);
insert into actor_movie values(7,20);
insert into actor_movie values(2,20);
insert into actor_movie values(6,20);
insert into actor_movie values(1,30);
insert into actor_movie values(7,30);
insert into actor_movie values(4,40);
insert into actor_movie values(6,40);
insert into actor_movie values(1,50);
insert into actor_movie values(2,50);
insert into actor_movie values(7,50);
insert into actor_movie values(2,60);
insert into actor_movie values(3,60);
insert into actor_movie values(4,60);
insert into actor_movie values(5,60);
insert into actor_movie values(7,60);
insert into actor_movie values(2,70);
insert into actor_movie values(5,70);
insert into actor_movie values(3,80);
insert into actor_movie values(5,80);
insert into actor_movie values(3,90);
insert into actor_movie values(6,90);
insert into actor_movie values(3,100);
insert into actor_movie values(7,100);


create table oldbook (
	id int,
	name varchar(20)
);

create table newbook (
	id int,
	name varchar(20)
);

insert into oldbook values(1, 'MySQL');
insert into oldbook values(2, 'hBase');
insert into oldbook values(3, 'Oracle');
insert into oldbook values(4, 'C++');
insert into oldbook values(4, 'C++');

insert into newbook values(1, 'JavaScript');
insert into newbook values(2, 'hBase');
insert into newbook values(3, 'Redis');


-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('1', 'MySQL Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('2', 'NoSql Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('3', 'Node Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('4', 'JavaScript Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('5', 'Oracle Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('6', 'Java Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('7', 'C++ Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('8', 'HTML Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('9', 'PHP Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('10', 'Python Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('11', 'NoSql Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('12', 'Oracle Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('13', 'Python Edition-1');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('14', 'Oracle Edition-2');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('15', 'HTML Edition-2');
-- INSERT INTO `nf2`.`oldbook` (`id`, `name`) VALUES ('16', 'Hive');


-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('1', 'MySQL Edition-2');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('2', 'NoSql Edition-2');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('3', 'Node Edition-2');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('4', 'JavaScript Edition-2');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('5', 'Oracle Edition-2');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('6', 'Java Edition-2');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('7', 'C++ Edition-2');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('8', 'HTML Edition-2');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('9', 'PHP Edition-2');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('10', 'Python Edition-2');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('11', 'Redis');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('12', 'hBase');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('13', 'NoSql Edition-1');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('14', 'Oracle Edition-1');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('15', 'Python Edition-1');
-- INSERT INTO `nf2`.`newbook` (`id`, `name`) VALUES ('16', 'NoSql Edition-2');


-----------------------------------------------------------------------------------

create table products (
	ProductID int(11) primary key auto_increment,
	ProductName varchar(40),
	SupplierID int(11),
	CategoryID int(11),
	QuantityPerUnit varchar(20),
	UnitPrice decimal(10,4) Default 0.0000,
	UnitsInStock int(2) Default 0,
	UnitsOnOrder int(2) Default 0,
	ReorderLevel int(2) Default 0,
	Discontinued boolean
);


CREATE TABLE CUSTOMER (
 CUSTID              INT (6) NOT NULL,
 NAME                varchar(45),
 ADDRESS             varchar(40),
 CITY                varchar(30),
 STATE               varchar(2),
 ZIP                 varchar(9),
 AREA                INT (3),
 PHONE               varchar(9),
 REPID               INT (4) NOT NULL,
 CREDITLIMIT         float (9,2),
 COMMENTS            text,
 CONSTRAINT CUSTOMER_PRIMARY_KEY PRIMARY KEY (CUSTID),
 CONSTRAINT CUSTID_ZERO CHECK (CUSTID > 0));

CREATE TABLE ORD  (
 ORDID               INT (4) NOT NULL,
 ORDERDATE           datetime,
 COMMPLAN            varchar(1),
 CUSTID              INT (6) NOT NULL,
 SHIPDATE            datetime,
 TOTAL               float (8,2),
 CONSTRAINT TOTAL_ZERO CHECK (TOTAL >= 0),
 CONSTRAINT ORD_FOREIGN_KEY FOREIGN KEY (CUSTID) REFERENCES CUSTOMER (CUSTID),
 CONSTRAINT ORD_PRIMARY_KEY PRIMARY KEY (ORDID));

CREATE TABLE ITEM  (
 ORDID               INT (4) NOT NULL,
 ITEMID              INT (4) NOT NULL,
 PRODID              INT (6),
 ACTUALPRICE         float (8,2),
 QTY                 INT (8),
 ITEMTOT             float (8,2),
 CONSTRAINT ITEM_FOREIGN_KEY FOREIGN KEY (ORDID) REFERENCES ORD (ORDID),
 CONSTRAINT ITEM_PRIMARY_KEY PRIMARY KEY (ORDID,ITEMID));

CREATE TABLE PRODUCT (
 PRODID              INT (6),
 DESCRIP             varchar(30),
 CONSTRAINT PRODUCT_PRIMARY_KEY PRIMARY KEY (PRODID));

CREATE TABLE PRICE (
 PRODID              INT (6) NOT NULL,
 STDPRICE            float (8,2),
 MINPRICE            float (8,2),
 STARTDATE           datetime,
 ENDDATE             datetime);


insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Chai', 1, 1, '10 boxes x 20 bags', 18.0000,39,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Chang', 1, 1, '24 - 12 oz bottles', 19.0000,17,40,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.0000,13,70,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Chef Anton's Cajun Seasoning", 2, 2, '48 - 6 oz jars', 22.0000,53,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Chef Anton's Gumbo Mix", 2, 2, '36 boxes', 21.3500,0,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Grandma's Boysenberry Spread", 3, 2, '12 - 8 oz jars', 25.0000,120,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Uncle Bob's Organic Dried Pears", 3, 7, '12 - 1 lb pkgs.', 30.0000,15,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.0000,6,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97.0000,29,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Ikura', 4, 8, '12 - 200 ml jars', 31.0000,31,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21.0000,22,30,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38.0000,86,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Konbu', 6, 8, '2 kg box', 6.0000,24,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.2500,35,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Genen Shouyu', 6, 2, '40 - 100 g pkgs.', 15.5000,39,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.4500,29,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39.0000,0,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.5000,42,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.2000,25,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Sir Rodney's Marmalade", 8, 3, '30 gift boxes', 81.0000,40,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Sir Rodney's Scones", 8, 3, '24 pkgs. x 4 pieces', 10.0000,3,40,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Gustaf's Knckebrd", 9, 5, '24 - 500 g pkgs.', 21.0000,104,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Tunnbrd', 9, 5, '12 - 250 g pkgs.', 9.0000,61,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Guaran Fantstica', 10, 1, '12 - 355 ml cans', 4.5000,20,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'NuNuCa Nu-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14.0000,76,0,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gumbr Gummibrchen', 11, 3, '100 - 250 g bags', 31.2300,15,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.9000,49,0,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Rssle Sauerkraut', 12, 7, '25 - 825 g cans', 45.6000,26,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Thringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.7900,0,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.8900,10,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.5000,0,70,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32.0000,9,40,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Geitost', 15, 4, '500 g', 2.5000,112,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14.0000,111,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18.0000,20,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Inlagd Sill', 17, 8, '24 - 250 g jars', 19.0000,112,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26.0000,11,50,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Cte de Blaye', 18, 1, '12 - 75 cl bottles', 263.5000,17,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18.0000,69,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.4000,123,0,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Jack's New England Clam Chowder", 19, 8, '12 - 12 oz cans', 9.6500,85,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14.0000,26,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46.0000,17,10,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.4500,27,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Rogede sild', 21, 8, '1k pkg.', 9.5000,5,70,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Spegesild', 21, 8, '4 - 450 g glasses', 12.0000,95,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.5000,36,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Chocolade', 22, 3, '10 pkgs.', 12.7500,15,70,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20.0000,10,60,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.2500,65,0,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53.0000,20,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7.0000,38,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Perth Pasties', 24, 6, '48 pieces', 32.8000,0,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Tourtire', 25, 6, '16 pies', 7.4500,21,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Pt chinois', 25, 6, '24 boxes x 2 pies', 24.0000,115,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38.0000,21,10,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.5000,36,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13.2500,62,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55.0000,79,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34.0000,19,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Sirop d'rable", 29, 2, '24 - 500 ml bottles', 28.5000,113,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Tarte au sucre', 29, 3, '48 pies', 49.3000,17,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.9000,24,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Wimmers gute Semmelkndel', 12, 5, '20 bags x 4 pieces', 33.2500,22,80,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.0500,76,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17.0000,4,100,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14.0000,52,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.5000,6,10,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36.0000,26,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15.0000,15,10,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Flotemysost', 15, 4, '10 - 500 g pkgs.', 21.5000,26,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.8000,14,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Rd Kaviar', 17, 8, '24 - 150 g jars', 15.0000,101,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10.0000,4,20,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Rhnbru Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.7500,125,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Lakkalikri', 23, 1, '500 ml', 18.0000,57,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Original Frankfurter grne Soe', 12, 2, '12 boxes', 13.0000,32,0,15,0);



INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('96711', 'CA', '7844', '598-6609',
 'JOCKSPORTS',
 '100', '5000', 'BELMONT', '415', '345 VIEWRIDGE',
 'Very friendly people to work with -- sales rep likes to be called Mike.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('94061', 'CA', '7521', '368-1223',
 'TKB SPORT SHOP',
 '101', '10000', 'REDWOOD CITY', '415', '490 BOLI RD.',
 'Rep called 5/8 about change in order - contact shipping.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('95133', 'CA', '7654', '644-3341',
 'VOLLYRITE',
 '102', '7000', 'BURLINGAME', '415', '9722 HAMILTON',
 'Company doing heavy promotion beginning 10/89. Prepare for large orders during
 winter.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('97544', 'CA', '7521', '677-9312',
 'JUST TENNIS',
 '103', '3000', 'BURLINGAME', '415', 'HILLVIEW MALL',
 'Contact rep about new line of tennis rackets.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('93301', 'CA', '7499', '996-2323',
 'EVERY MOUNTAIN',
 '104', '10000', 'CUPERTINO', '408', '574 SURRY RD.',
 'Customer with high market share (23%) due to aggressive advertising.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('91003', 'CA', '7844', '376-9966',
 'K + T SPORTS',
 '105', '5000', 'SANTA CLARA', '408', '3476 EL PASEO',
 'Tends to order large amounts of merchandise at once. Accounting is considering
 raising their credit limit. Usually pays on time.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('94301', 'CA', '7521', '364-9777',
 'SHAPE UP',
 '106', '6000', 'PALO ALTO', '415', '908 SEQUOIA',
 'Support intensive. Orders small amounts (< 800) of merchandise at a time.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('93301', 'CA', '7499', '967-4398',
 'WOMENS SPORTS',
 '107', '10000', 'SUNNYVALE', '408', 'VALCO VILLAGE',
 'First sporting goods store geared exclusively towards women. Unusual promotion
al style and very willing to take chances towards new products!');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('55649', 'MN', '7844', '566-9123',
 'NORTH WOODS HEALTH AND FITNESS SUPPLY CENTER',
 '108', '8000', 'HIBBING', '612', '98 LONE PINE WAY', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('101.4', '1987-01-08', '610', '1987-01-07', '101', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('45', '1987-01-11', '611', '1987-01-11', '102', 'B');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('5860', '1987-01-20', '612', '1987-01-15', '104', 'C');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('2.4', '1986-05-30', '601', '1986-05-01', '106', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('56', '1986-06-20', '602', '1986-06-05', '102', 'B');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('698', '1986-06-30', '604', '1986-06-15', '106', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('8324', '1986-07-30', '605', '1986-07-14', '106', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('3.4', '1986-07-30', '606', '1986-07-14', '100', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('97.5', '1986-08-15', '609', '1986-08-01', '100', 'B');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('5.6', '1986-07-18', '607', '1986-07-18', '104', 'C');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('35.2', '1986-07-25', '608', '1986-07-25', '104', 'C');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('224', '1986-06-05', '603', '1986-06-05', '102', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('4450', '1987-03-12', '620', '1987-03-12', '100', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('6400', '1987-02-01', '613', '1987-02-01', '108', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('23940', '1987-02-05', '614', '1987-02-01', '102', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('764', '1987-02-10', '616', '1987-02-03', '103', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('1260', '1987-02-04', '619', '1987-02-22', '104', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('46370', '1987-03-03', '617', '1987-02-05', '105', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('710', '1987-02-06', '615', '1987-02-01', '107', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('3510.5', '1987-03-06', '618', '1987-02-15', '102', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('730', '1987-01-01', '621', '1987-03-15', '100', 'A');


INSERT INTO ITEM (QTY, PRODID, ORDID, ITEMTOT, ITEMID, ACTUALPRICE)
 VALUES ('1', '100890', '610', '58', '3', '58');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '1', '100861', '611', '45', '1', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '100', '100860', '612', '3000', '1', '30');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '1', '200376', '601', '2.4', '1', '2.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '20', '100870', '602', '56', '1', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '3', '100890', '604', '174', '1', '58');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '2', '100861', '604', '84', '2', '42');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '10', '100860', '604', '440', '3', '44');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '4', '100860', '603', '224', '2', '56');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '1', '100860', '610', '35', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '3', '100870', '610', '8.4', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '200', '200376', '613', '440', '4', '2.2');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '444', '100860', '614', '15540', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '1000', '100870', '614', '2800', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '20', '100861', '612', '810', '2', '40.5');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('150', '101863', '612', '1500', '3', '10');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '100860', '620', '350', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1000', '200376', '620', '2400', '2', '2.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('500', '102130', '620', '1700', '3', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '100', '100871', '613', '560', '1', '5.6');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('200', '101860', '613', '4800', '2', '24');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('150', '200380', '613', '600', '3', '4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '102130', '619', '340', '3', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '100860', '617', '1750', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '100861', '617', '4500', '2', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1000', '100871', '614', '5600', '3', '5.6');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '100861', '616', '450', '1', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '100870', '616', '140', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('2', '100890', '616', '116', '3', '58');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '102130', '616', '34', '4', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '200376' , '616', '24', '5', '2.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '200380', '619', '400', '1', '4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '200376', '619', '240', '2', '2.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('4', '100861', '615', '180', '1', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1', '100871', '607', '5.6', '1', '5.6');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '100870', '615', '280', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('500', '100870', '617', '1400', '3', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('500', '100871', '617', '2800', '4', '5.6');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('500', '100890', '617', '29000', '5', '58');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '101860', '617', '2400', '6', '24');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('200', '101863', '617', '2500', '7', '12.5');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '102130', '617', '340', '8', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('200', '200376', '617', '480', '9', '2.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('300', '200380', '617', '1200', '10', '4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('5', '100870', '609', '12.5', '2', '2.5');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1', '100890', '609', '50', '3', '50');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('23', '100860', '618', '805', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '100861', '618', '2255.5', '2', '45.11');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '100870', '618', '450', '3', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '100861', '621', '450', '1', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '100870', '621', '280', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '100871', '615', '250', '3', '5');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1', '101860', '608', '24', '1', '24');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('2', '100871', '608', '11.2', '2', '5.6');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1', '100861', '609', '35', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1', '102130', '606', '3.4', '1', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '100861', '605', '4500', '1', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('500', '100870', '605', '1400', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('5', '100890', '605', '290', '3', '58');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '101860', '605', '1200', '4', '24');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '101863', '605', '900', '5', '9');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '102130', '605', '34', '6', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '100871', '612', '550', '4', '5.5');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '100871', '619', '280', '4', '5.6');


INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('4.8', '1985-01-01', '100871', '3.2', '1985-12-01');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('58', '1985-01-01', '100890', '46.4', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('54', '1984-06-01', '100890', '40.5', '1984-05-31');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('35', '1986-06-01', '100860', '28', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('32', '1986-01-01', '100860', '25.6', '1986-05-31');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('30', '1985-01-01', '100860', '24', '1985-12-31');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('45', '1986-06-01', '100861', '36', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('42', '1986-01-01', '100861', '33.6', '1986-05-31');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('39', '1985-01-01', '100861', '31.2', '1985-12-31');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('2.8', '1986-01-01', '100870', '2.4', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('2.4', '1985-01-01', '100870', '1.9', '1985-12-01');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('5.6', '1986-01-01', '100871', '4.8', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('24', '1985-02-15', '101860', '18', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('12.5', '1985-02-15', '101863', '9.4', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('3.4', '1985-08-18', '102130', '2.8', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('2.4', '1986-10-15', '200376', '1.75', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('4', '1986-10-15', '200380', '3.2', null);

CREATE INDEX PRICE_INDEX ON PRICE(PRODID, STARTDATE);

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('100860', 'ACE TENNIS RACKET I');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('100861', 'ACE TENNIS RACKET II');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('100870', 'ACE TENNIS BALLS-3 PACK');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('100871', 'ACE TENNIS BALLS-6 PACK');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('100890', 'ACE TENNIS NET');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('101860', 'SP TENNIS RACKET');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('101863', 'SP JUNIOR RACKET');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('102130', 'RH: "GUIDE TO TENNIS"');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('200376', 'SB ENERGY BAR-6 PACK');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('200380', 'SB VITA SNACK-6 PACK');

CREATE VIEW SALES AS
SELECT REPID, ORD.CUSTID, CUSTOMER.NAME CUSTNAME, PRODUCT.PRODID,
DESCRIP PRODNAME, SUM(ITEMTOT) AMOUNT
FROM ORD, ITEM, CUSTOMER, PRODUCT
WHERE ORD.ORDID = ITEM.ORDID
AND ORD.CUSTID = CUSTOMER.CUSTID
AND ITEM.PRODID = PRODUCT.PRODID
GROUP BY REPID, ORD.CUSTID, NAME, PRODUCT.PRODID, DESCRIP;


CREATE TABLE MENUCARD (
	ID INT primary key, 
	NAME varchar(35), 
	RATE INT
);
  

CREATE TABLE SOFTDRINK (
	ID INT primary key,
	NAME varchar(25),
	RATE INT
);

create table book (
	id int primary key, 
	name varchar(20)
);

create table AvailableIN (
	id int primary key, 
	type varchar(10), 
	cost int
);

INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('1', 'Extra Long Cheeseburger', '100');
INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('2', 'Double Stacker', '125');
INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('3', 'Double Cheeseburger', '100');
INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('4', 'Hamburger', '85');
INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('5', 'Classic Grilled Hot Dog', '95');
INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('6', 'Chili Cheese Grilled Hot Dog', '115');
INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('7', 'Flame Grilled Chicken Burger', '135');
INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('8', 'Original Chicken Sandwich', '55');
INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('9', 'McALLO TIKKI', '45');
INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('10', 'Veg Maharaja Mac', '75');
INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('11', 'Big Spicy Chicken Wrap', '100');
INSERT INTO `nf2`.`menucard` (`ID`, `NAME`, `RATE`) VALUES ('12', 'McVeggie Schezwan', '85');


INSERT INTO `nf2`.`softdrink` (`ID`, `NAME`, `RATE`) VALUES ('1', 'Coca-Cola', '45');
INSERT INTO `nf2`.`softdrink` (`ID`, `NAME`, `RATE`) VALUES ('2', 'Mello Yello', '75');
INSERT INTO `nf2`.`softdrink` (`ID`, `NAME`, `RATE`) VALUES ('3', 'Diet Coke', '60');
INSERT INTO `nf2`.`softdrink` (`ID`, `NAME`, `RATE`) VALUES ('4', 'Frozen Fanta Cherry', '65');
INSERT INTO `nf2`.`softdrink` (`ID`, `NAME`, `RATE`) VALUES ('5', 'Iced Tea', '35');


INSERT INTO `nf2`.`book` (`id`, `name`) VALUES ('1', 'MySQL');
INSERT INTO `nf2`.`book` (`id`, `name`) VALUES ('2', 'NoSql');
INSERT INTO `nf2`.`book` (`id`, `name`) VALUES ('3', 'Node');
INSERT INTO `nf2`.`book` (`id`, `name`) VALUES ('4', 'JavaScript');
INSERT INTO `nf2`.`book` (`id`, `name`) VALUES ('5', 'Oracle');
INSERT INTO `nf2`.`book` (`id`, `name`) VALUES ('6', 'Java');
INSERT INTO `nf2`.`book` (`id`, `name`) VALUES ('7', 'C++');
INSERT INTO `nf2`.`book` (`id`, `name`) VALUES ('8', 'HTML');
INSERT INTO `nf2`.`book` (`id`, `name`) VALUES ('9', 'PHP');
INSERT INTO `nf2`.`book` (`id`, `name`) VALUES ('10', 'Python');


INSERT INTO `nf2`.`availablein` (`id`, `type`, `cost`) VALUES ('1', 'PDF File', '1200');
INSERT INTO `nf2`.`availablein` (`id`, `type`, `cost`) VALUES ('2', 'Word File', '750');
INSERT INTO `nf2`.`availablein` (`id`, `type`, `cost`) VALUES ('3', 'Hardcovers', '1400');
INSERT INTO `nf2`.`availablein` (`id`, `type`, `cost`) VALUES ('4', 'Paperbacks', '900');



--------------------------------------------------------------------------


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
Drop table if exists N2Order;


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
	DATE date,
	COMMISSION float,
	foreign key(EMPLOYEEID) references N2Employee(ID)
);

create table N2Order (
	ID int primary key,
	EMPLOYEEID int,
	ORDER_DATE date,
	AMOUNT float,
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
	LINE1 varchar(30),
	LINE2 varchar(30),
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
	DEPARTMENTNUMBER int,
	EMPLOYER varchar(20),
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



INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('1', '12', '1994-03-16', '200');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('2', '12', '2002-07-08', '500');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('3', '7', '1963-07-13', '350');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('4', '7', '1968-08-20', '450');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('5', '7', '1974-11-14', '400');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('6', '7', '1980-02-13', '350');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('7', '7', '1980-02-13', '650');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('8', '19', '1967-05-13', '345');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('9', '19', '1971-04-24', '370');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('10', '19', '1980-09-16', '400');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('11', '19', '1983-01-12', '100');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('12', '22', '1963-08-10', '150');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('13', '22', '1972-02-26', '200');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('14', '22', '1974-10-23', '250');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('15', '22', '1979-04-13', '300');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('16', '15', '1994-06-26', '300');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('17', '15', '2001-06-27', '250');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('18', '15', '2007-02-28', '100');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('19', '27', '1964-08-17', '160');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('20', '27', '1974-11-04', '500');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('21', '27', '1981-09-28', '0');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('22', '8', '1967-12-29', '0');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('23', '8', '1970-04-02', '600');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('24', '8', '1979-07-19', '0');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('25', '8', '1980-12-25', '170');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('26', '9', '1992-01-17', '200');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('27', '9', '1999-04-20', '245');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('28', '9', '2000-08-11', '275');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('29', '10', '1990-09-07', '0');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('30', '10', '2000-06-05', '700');
INSERT INTO `nf2`.`n2commission` (`ID`, `EMPLOYEEID`, `DATE`, `COMMISSION`) VALUES ('31', '10', '2003-12-25', '750');




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
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('6', '6', '165 Village Dr., P.O. Box 3700', 'Oakland, TN', 'Oakland', '38060');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('7', '7', 'Po Box 83', 'Faith, NC', 'New Jersey', '28041');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('8', '8', '3402 Buccaneer Rose Ave', 'Bakersfield, CA', 'Boston', '93313');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('9', '9', '1615 Town Hall   ', 'Oakland, TN', 'Oakland', '38060');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('10', '10', '7710 Covington Rd', 'New State Road', 'New York', '37188');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('11', '11', '15 Hempstead St', 'Saugus, MA', 'Boston', '1906');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('12', '12', '165 Ken city, P.O. Box 942873', '50 Higuera Street', 'Oakland', '38060');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('13', '13', 'Po Box 83, Faith, NC', 'null', 'New York', '28041');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('14', '14', '808 Rocky Hill Rd', 'Plymouth 1993 Cross lane', 'Boston', '32360');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('15', '15', '118 Lippitt Ave Warwick', '100 S. Main Street', 'Los Angeles', '12889');
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
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('28', '28', '409 Berry St', 'Louisa, KY', 'San Jose', '41230');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('29', '29', '7720 Covington Rd', 'Pink Stand, TN', 'San Francisco', '37188');
INSERT INTO `nf2`.`n2address` (`ID`, `EMPLOYEEID`, `LINE1`, `LINE2`, `city`, `pin`) VALUES ('30', '30', '15 Hempstead', 'St, Saugus, MA', 'Las Vega', '1906');





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
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('67', '23', '10', 'Arts', '1955-02-10', 'Alaska', 'Columbia University', '1956', '80', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('68', '23', '12', 'Arts', '1957-04-14', 'New York', 'Columbia University', '1958', '91', 'A+');
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
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('87', '29', '10', 'Arts', '1978-03-26', 'Oklahoma', 'University of Ohio', '1979', '82', 'A');
INSERT INTO `nf2`.`n2qualification` (`ID`, `EMPLOYEEID`, `NAME`, `Stream`, `ADDMISSIONYEAR`, `INSTITUTE`, `UNIVERSITY`, `YEAROFPASSING`, `PERCENTAGE`, `GRADE`) VALUES ('88', '29', '12', 'Arts', '1979-10-26', 'Mississippi', 'Stanford University', '1983', '80', 'A');
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




INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('1', '7', '2018-05-19', '1000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('2', '3', '2018-02-21', '4500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('3', '7', '2018-08-01', '4000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('4', '1', '2018-04-19', '2500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('5', '8', '2018-02-28', '1200');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('6', '10', '2018-06-12', '500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('7', '21', '2018-10-05', '700');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('8', '2018-09-18', '2500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('9', '20', '2018-03-07', '6000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('10', '13', '2018-01-21', '7000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('11', '18', '2018-12-31', '3500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('12', '28', '2018-07-14', '1254');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('13', '19', '2018-08-19', '3000');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('14', '2018-05-21', '7634');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('15', '1', '2018-05-19', '7845');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('16', '4', '2018-02-21', '2465');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('17', '9', '2018-08-01', '5683');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('18', '10', '2018-04-19', '1288');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('19', '17', '2018-02-28', '3255');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('20', '20', '2018-06-12', '5388');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('21', '22', '2018-10-05', '4544');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('22', '27', '2018-09-18', '1200');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('23', '5', '2018-03-07', '3000');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('24', '2018-01-21', '60');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('25', '6', '2018-12-31', '1588');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('26', '5', '2018-07-14', '7344');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('27', '7', '2018-08-19', '7344');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('28', '8', '2018-06-10', '555');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('29', '12', '2018-06-16', '3488');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('30', '17', '2018-03-03', '1200');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('31', '19', '2018-06-18', '1100');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('32', '19', '2018-07-14', '2045');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('33', '2018-04-18', '975');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('34', '12', '2018-06-06', '6000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('35', '18', '2018-05-21', '8000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('36', '5', '2018-07-30', '10000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('37', '9', '2018-09-29', '8600');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('38', '8', '2018-07-15', '3700');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('39', '8', '2018-07-19', '4300');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('40', '10', '2018-01-23', '2500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('41', '8', '2018-01-17', '6000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('42', '8', '2018-01-23', '7000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('43', '9', '2018-01-10', '3500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('44', '9', '2018-02-01', '1254');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('45', '9', '2018-02-08', '3000');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('46', '2018-02-10', '7634');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('47', '9', '2018-01-21', '7845');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('48', '10', '2018-12-31', '2465');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('49', '10', '2018-07-14', '5683');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('50', '2018-08-19', '1288');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('51', '10', '2018-06-10', '4500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('52', '10', '2018-06-16', '2300');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('53', '10', '2018-03-03', '2100');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('54', '17', '2018-06-18', '1200');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('55', '11', '2018-07-14', '1500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('56', '11', '2018-04-18', '2700');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('57', '2018-06-06', '2600');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('58', '11', '2018-05-21', '2650');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('59', '11', '2018-07-30', '1250');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('60', '12', '2018-04-17', '2250');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('61', '9', '2018-02-18', '1300');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('62', '12', '2018-04-19', '1400');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('63', '9', '2017-01-01', '3400');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('64', '12', '2017-01-02', '3200');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('65', '2017-03-07', '3700');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('66', '13', '2017-10-10', '2500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('67', '13', '2017-12-09', '2560');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('68', '19', '2017-11-01', '1350');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('69', '14', '2017-11-25', '4500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('70', '14', '2017-11-08', '2700');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('71', '2017-10-09', '750');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('72', '14', '2017-01-10', '100');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('73', '15', '2017-01-11', '450');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('74', '21', '2018-05-19', '1900');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('75', '15', '2018-02-21', '2800');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('76', '15', '2018-08-01', '1500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('77', '23', '2018-04-19', '850');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('78', '19', '2018-02-28', '175');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('79', '25', '2018-06-12', '8600');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('80', '19', '2018-10-05', '3700');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('81', '4', '2018-09-18', '4300');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('82', '6', '2018-03-07', '2500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('83', '22', '2018-01-21', '6000');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('84', '2018-12-31', '7000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('85', '7', '2018-07-14', '3500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('86', '12', '2018-08-19', '1254');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('87', '18', '2018-05-21', '3000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('88', '27', '2018-05-19', '1255');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('89', '21', '2018-02-21', '2366');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('90', '27', '2018-08-01', '5600');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('91', '27', '2018-04-19', '3477');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('92', '4', '2018-02-28', '3210');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('93', '23', '2018-06-12', '2300');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('94', '8', '2018-10-05', '4100');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('95', '23', '2018-09-18', '3999');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('96', '23', '2018-03-07', '545');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('97', '2018-01-21', '100');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('98', '23', '2018-12-31', '450');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('99', '9', '2018-07-14', '1900');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('100', '24', '2018-08-19', '2800');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('101', '19', '2018-06-10', '1500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('102', '24', '2018-06-16', '850');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('103', '2018-03-03', '175');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('104', '24', '2018-06-18', '8600');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('105', '20', '2018-07-14', '3700');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('106', '21', '2018-04-18', '4300');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('107', '20', '2018-06-06', '2500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('108', '10', '2018-05-21', '2100');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('109', '7', '2018-07-30', '180');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('110', '2018-09-29', '275');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('111', '17', '2018-07-15', '165');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('112', '17', '2018-07-19', '235');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('113', '13', '2018-01-23', '450');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('114', '17', '2018-01-17', '500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('115', '26', '2018-01-23', '535');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('116', '16', '2018-01-10', '1460');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('117', '16', '2018-02-01', '1240');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('118', '2', '2018-02-08', '1450');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('119', '16', '2018-02-10', '2335');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('120', '7', '2018-01-21', '2465');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('121', '18', '2018-12-31', '3500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('122', '5', '2018-07-14', '3200');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('123', '18', '2018-08-19', '3150');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('124', '7', '2018-06-10', '2160');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('125', '25', '2018-06-16', '1600');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('126', '2018-03-03', '700');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('127', '25', '2018-06-18', '400');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('128', '17', '2018-07-14', '300');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('129', '25', '2018-04-18', '8600');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('130', '12', '2018-06-06', '3700');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('131', '10', '2018-05-21', '4300');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('132', '2018-07-30', '2500');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('133', '21', '2018-04-17', '2100');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('134', '21', '2018-02-18', '180');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('135', '2018-04-19', '450');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('136', '13', '2017-01-01', '700');
INSERT INTO `nf2`.`n2order` (`ID`, `ORDER_DATE`, `AMOUNT`) VALUES ('137', '2017-01-02', '1780');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('138', '27', '2017-03-07', '2000');
INSERT INTO `nf2`.`n2order` (`ID`, `EMPLOYEEID`, `ORDER_DATE`, `AMOUNT`) VALUES ('139', '3', '2017-10-10', '200');




INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('1', '1', '10', 'Arjun', '1964-06-12', '1966-07-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('2', '1', '20', 'Sai', '1966-07-13', '1970-07-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('3', '1', '30', 'Dhruv', '1970-07-14', '1975-07-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('4', '1', '40', 'Saleel', '1975-07-15', '1979-08-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('5', '1', '50', 'Vrushali', '1979-08-13', '1983-08-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('6', '2', '60', 'Sharmin', '1964-10-25', '1969-12-02', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('7', '2', '70', 'Nitish', '1969-12-03', '1974-07-07', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('8', '2', '80', 'Neel', '1974-07-08', '1979-02-21', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('9', '2', '90', 'Deep', '1979-02-22', '1980-03-21', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('10', '2', '100', 'Kaushal', '1980-03-22', '1983-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('11', '3', '110', 'Natasha', '1964-10-25', '1969-12-02', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('12', '3', '120', 'Bandish', '1969-12-03', '1974-07-07', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('13', '3', '130', 'Sangita', '1974-07-08', '1979-02-21', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('14', '3', '140', 'Supriya', '1979-02-22', '1980-03-21', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('15', '3', '150', 'Ruhan', '1980-03-22', '1983-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('16', '4', '10', 'Gau', '1965-10-31', '1970-05-11', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('17', '4', '20', 'Bipin', '1970-05-12', '1975-07-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('18', '4', '30', 'Leena', '1975-07-18', '1978-11-02', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('19', '4', '40', 'Kabir', '1980-11-03', '1982-04-09', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('20', '4', '50', 'Om', '1982-04-10', '1983-04-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('21', '4', '60', 'Omkar', '1983-04-28', '1984-12-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('22', '5', '70', 'Manish', '1965-01-12', '1969-01-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('23', '5', '150', 'Manoj', '1969-01-13', '1972-09-05', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('24', '5', '90', 'Aditi', '1972-09-06', '1977-11-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('25', '5', '100', 'Varsha', '1977-11-14', '1981-12-31', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('26', '5', '130', 'Monika', '1982-01-01', '1983-03-23', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('27', '5', '120', 'Karishma', '1983-03-24', '1985-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('28', '6', '130', 'Vrushali', '1965-12-01', '1973-02-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('29', '6', '140', 'Sharmin', '1973-02-28', '1976-05-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('30', '6', '150', 'Nitish', '1976-05-15', '1978-05-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('31', '6', '70', 'Neel', '1978-04-17', '1982-01-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('32', '6', '80', 'Deep', '1982-02-28', '1985-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('33', '7', '90', 'Kaushal', '1960-12-14', '1963-07-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('34', '7', '100', 'Natasha', '1963-07-14', '1968-08-20', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('35', '7', '110', 'Nitish', '1968-08-21', '1972-11-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('36', '7', '120', 'Sharmin', '1972-12-28', '1974-11-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('37', '7', '130', 'Sharmin', '1974-11-15', '1980-02-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('38', '8', '140', 'Bandish', '1960-12-29', '1967-12-29', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('39', '8', '150', 'Bandish', '1968-01-01', '1970-04-02', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('40', '8', '10', 'Om', '1970-04-03', '1977-07-07', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('41', '8', '20', 'Omkar', '1977-07-08', '1979-07-19', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('42', '8', '30', 'Manish', '1979-07-20', '1980-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('43', '9', '40', 'Manoj', '1982-10-26', '1988-11-18', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('44', '9', '50', 'Aditi', '1988-11-19', '1992-01-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('45', '9', '60', 'Manoj', '1992-01-18', '1999-04-20', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('46', '9', '70', 'Aditi', '1999-04-21', '2000-08-11', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('47', '9', '80', 'Omkar', '2000-08-12', '2001-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('48', '10', '90', 'Monika', '1983-10-26', '1988-03-06', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('49', '10', '130', 'Monika', '1988-03-07', '1990-09-07', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('50', '10', '140', 'Karishma', '1990-09-08', '1991-06-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('51', '10', '150', 'Karishma', '1991-06-05', '2000-06-05', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('52', '10', '10', 'Karishma', '2000-06-06', '2002-08-08', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('53', '10', '20', 'Karishma', '2002-08-09', '2003-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('54', '11', '30', 'Sharmin', '1984-10-30', '1987-11-29', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('55', '11', '40', 'Sharmin', '1987-11-30', '1990-12-31', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('56', '11', '50', 'Sharmin', '1991-01-01', '1998-05-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('57', '11', '60', 'Nitish', '1998-05-28', '2001-05-28', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('58', '11', '70', 'Nitish', '2001-05-29', '2002-03-31', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('59', '11', '80', 'Sharmin', '2002-04-01', '2003-12-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('60', '12', '70', 'Neel', '1984-11-30', '1990-08-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('61', '12', '80', 'Neel', '1990-08-28', '1994-03-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('62', '12', '90', 'Neel', '1994-03-17', '2001-03-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('63', '12', '100', 'Deep', '2001-03-18', '2002-07-08', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('64', '12', '110', 'Deep', '2002-07-09', '2004-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('65', '13', '120', 'Divya', '1985-12-01', '1987-12-20', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('66', '13', '130', 'Divya', '1987-12-21', '1992-08-26', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('67', '13', '140', 'Divya', '1992-08-27', '2003-03-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('68', '13', '150', 'Divya', '2003-03-18', '2005-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('69', '14', '10', 'Ekta', '1986-12-15', '1989-02-23', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('70', '14', '20', 'Ekta', '1989-02-24', '1999-04-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('71', '14', '30', 'Ekta', '1999-04-15', '2004-03-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('72', '14', '40', 'Ekta', '2004-03-17', '2006-02-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('73', '15', '50', 'Falguni', '1987-12-30', '1994-06-26', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('74', '15', '60', 'Gini', '1994-06-27', '2001-06-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('75', '15', '70', 'Falguni', '2001-06-28', '2004-04-18', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('76', '15', '80', 'Gini', '2004-04-19', '2007-02-28', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('77', '19', '90', 'Sharmin', '1963-11-13', '1967-05-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('78', '19', '100', 'Sharmin', '1967-05-14', '1971-04-24', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('79', '19', '110', 'Bandish', '1971-04-25', '1979-07-15', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('80', '19', '120', 'Bandish', '1979-07-16', '1980-09-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('81', '19', '130', 'Sharmin', '1980-09-17', '1983-01-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('82', '22', '70', 'Om', '1962-04-10', '1963-08-10', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('83', '22', '80', 'Manish', '1963-08-11', '1967-01-15', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('84', '22', '90', 'Manoj', '1967-01-16', '1972-02-26', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('85', '22', '100', 'Aditi', '1972-02-27', '1974-10-23', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('86', '22', '110', 'Manoj', '1974-10-24', '1979-04-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('87', '22', '120', 'Aditi', '1979-05-14', '1981-06-09', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('88', '27', '130', 'Omkar', '1962-07-30', '1964-08-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('89', '27', '140', 'Monika', '1964-08-18', '1967-03-03', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('90', '27', '150', 'Monika', '1967-03-04', '1974-11-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('91', '27', '20', 'Karishma', '1974-11-05', '1980-12-24', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('92', '27', '20', 'Karishma', '1980-12-25', '1981-09-28', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('93', '23', '30', 'Sharmin', '1962-04-10', '1963-08-10', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('94', '23', '40', 'Sharmin', '1963-08-11', '1967-01-15', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('95', '23', '50', 'Bandish', '1967-01-16', '1972-02-26', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('96', '23', '60', 'Bandish', '1972-02-27', '1974-10-23', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('97', '23', '70', 'Om', '1974-10-24', '1979-04-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('98', '23', '80', 'Omkar', '1979-05-14', '1981-06-09', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('99', '24', '90', 'Manish', '1962-04-10', '1963-08-10', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('100', '24', '100', 'Manoj', '1963-08-11', '1967-01-15', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('101', '24', '110', 'Aditi', '1967-01-16', '1972-02-26', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('102', '24', '120', 'Manoj', '1972-02-27', '1974-10-23', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('103', '24', '130', 'Aditi', '1974-10-24', '1979-04-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('104', '24', '140', 'Omkar', '1979-05-14', '1981-06-09', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('105', '20', '150', 'Monika', '1962-07-30', '1964-08-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('106', '20', '10', 'Monika', '1964-08-18', '1967-03-03', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('107', '20', '20', 'Karishma', '1967-03-04', '1974-11-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('108', '20', '30', 'Karishma', '1974-11-05', '1980-12-24', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('109', '20', '40', 'Arjun', '1980-12-25', '1981-09-28', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('110', '17', '50', 'Sai', '1982-10-26', '1988-11-18', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('111', '17', '60', 'Dhruv', '1988-11-19', '1992-01-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('112', '17', '70', 'Saleel', '1992-01-18', '1999-04-20', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('113', '17', '80', 'Vrushali', '1999-04-21', '2000-08-11', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('114', '17', '90', 'Arjun', '2000-08-12', '2001-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('115', '16', '130', 'Sai', '1965-12-01', '1973-02-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('116', '16', '140', 'Dhruv', '1973-02-28', '1976-05-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('117', '16', '150', 'Saleel', '1976-05-15', '1978-05-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('118', '16', '10', 'Vrushali', '1978-04-17', '1982-01-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('119', '16', '20', 'Arjun', '1982-02-28', '1985-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('120', '18', '30', 'Sangita', '1964-06-12', '1966-07-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('121', '18', '40', 'Supriya', '1966-07-13', '1970-07-13', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('122', '18', '50', 'Ruhan', '1970-07-14', '1975-07-14', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('123', '18', '60', 'Gau', '1975-07-15', '1979-08-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('124', '18', '70', 'Bipin', '1979-08-13', '1983-08-12', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('125', '25', '80', 'Leena', '1983-10-26', '1988-03-06', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('126', '25', '70', 'Kabir', '1988-03-07', '1990-09-07', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('127', '25', '80', 'Sangita', '1990-09-08', '1991-06-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('128', '25', '90', 'Supriya', '1991-06-05', '2000-06-05', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('129', '25', '10', 'Ruhan', '2000-06-06', '2002-08-08', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('130', '25', '20', 'Gau', '2002-08-09', '2003-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('131', '21', '30', 'Bipin', '1984-11-30', '1990-08-27', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('132', '21', '40', 'Leena', '1990-08-28', '1994-03-16', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('133', '21', '50', 'Kabir', '1994-03-17', '2001-03-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('134', '21', '60', 'Dhruv', '2001-03-18', '2002-07-08', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('135', '21', '70', 'Saleel', '2002-07-09', '2004-01-30', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('136', '27', '80', 'Vrushali', '1990-09-08', '1991-06-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('137', '27', '70', 'Arjun', '1991-06-05', '2000-06-05', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('138', '27', '80', 'Sangita', '2000-06-06', '2002-08-08', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('139', '27', '90', 'Supriya', '2002-08-09', '2003-12-25', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('140', '26', '70', 'Bipin', '1962-07-30', '1964-08-17', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('141', '26', '80', 'Leena', '1964-08-18', '1967-03-03', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('142', '26', '70', 'Kabir', '1967-03-04', '1974-11-04', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('143', '26', '80', 'Dhruv', '1974-11-05', '1980-12-24', '');
INSERT INTO `nf2`.`n2jobhistory` (`ID`, `EMPLOYEEID`, `DEPARTMENTNUMBER`, `EMPLOYER`, `FROMDATE`, `TODATE`, `NATURE`) VALUES ('144', '26', '90', 'Saleel', '1980-12-25', '1981-09-28', '');


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
	EMPLOYER varchar(20),
	FROMDATE date,
	TODATE date,
	NATURE varchar(20),
	foreign key(EMPLOYEEID) references N3Employee(ID)
);


INSERT INTO `n3country` (`ID`, `NAME`) VALUES ('1', 'USA');
INSERT INTO `n3country` (`ID`, `NAME`) VALUES ('2', 'INDIA');
INSERT INTO `n3country` (`ID`, `NAME`) VALUES ('3', 'UK');
INSERT INTO `n3country` (`ID`, `NAME`) VALUES ('4', 'France');
