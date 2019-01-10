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

