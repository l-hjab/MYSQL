
-- question 1 ,retrieve data checkNumber,paymentDate,Amount from payments table
 select checkNumber,paymentDate,Amount from payments;
 
--  question 2,to retrieve orderDate,requiredDate and status of   orders that are currently 'In Process' in descending order
 select orderDate,requiredDate from  orders
 where orders like '%In Process%'
 order by orderDate desc;
 
--  question 3,to display firstName,lastName,email from employees table who's job title is 'Sales Rep'
show databases;
use sample;
-- table payments
CREATE TABLE payments (
  customerNumber int NOT NULL,
  checkNumber varchar(50) NOT NULL,
  paymentDate date NOT NULL,
  amount decimal(10,2) NOT NULL,
  PRIMARY KEY (customerNumber,checkNumber));
  
-- inserting values into payment
  INSERT INTO `payments` VALUES (103,'HQ336336','2004-10-19',6066.78),
  (103,'JM555205','2003-06-05',14571.44),(103,'OM314933','2004-12-18',1676.14),
  (112,'BO864823','2004-12-17',14191.12),(112,'HQ55022','2003-06-06',32641.98),
  (112,'ND748579','2004-08-20',33347.88),(114,'GG31455','2003-05-20',45864.03),
  (114,'MA765515','2004-12-15',82261.22),(114,'NP603840','2003-05-31',7565.08),
  (114,'NR27552','2004-03-10',44894.74);
--  question 1 ,retrieve data checkNumber,paymentDate,Amount from payments table
 select checkNumber,paymentDate,Amount from payments;
 
--  question 2,to retrieve orderDate,requiredDate and status of   orders that are currently 'In Process' in descending order
   -- table orders
CREATE TABLE orders ( 
  orderNumber int NOT NULL,
  orderDate date NOT NULL,
  requiredDate date NOT NULL,
  shippedDate date DEFAULT NULL,
  status varchar(15) NOT NULL,
  comments text,
  customerNumber int NOT NULL,
  PRIMARY KEY (orderNumber));
  
-- values to table orders   
 INSERT INTO orders VALUES (10100,'2003-01-06','2003-01-13','2003-01-10','Shipped',NULL,363),
  (10101,'2003-01-09','2003-01-18','2003-01-11','Shipped','Check on availability.',128),
  (10102,'2003-01-10','2003-01-18','2003-01-14','Shipped',NULL,181),
  (10103,'2003-01-29','2003-02-07','2003-02-02','In Process',NULL,121),
  (10104,'2003-01-31','2003-02-09','2003-02-01','Shipped',NULL,141),
  (10105,'2003-02-11','2003-02-21','2003-02-12','In Process',NULL,145),
  (10106,'2003-02-17','2003-02-24','2003-02-21','Shipped',NULL,278),
  (10107,'2003-02-24','2003-03-03','2003-02-26','In Process','Difficult to negotiate with customer. We need more marketing materials',131);
 --  orderDate,requiredDate and status of   orders that are currently 'In Process' in descending order
 select orderDate,requiredDate from  orders
 where status like '%In Process%'
 order by orderDate desc;
 
--  question 3,Query to display firstName,lastName,email from employees table who's job title is 'Sales Rep'

 select firstName,lastName,email from employees
 where title = 'Sales Rep'
 order by employeeNumber desc;
 

--  question 4,to retrieve all records in offices table
 select * from offices;
 
--  question 5,query to fetch productName quantityInStock from products table and display 5 records only 
 select productName quantityInStock from products 
 order by buyPrice asc
 limit 5;
 
-- select * from payment;


--  question 4,Query to retrieve all records in offices table

CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL,
  `territory` varchar(10) NOT NULL,
  PRIMARY KEY (`officeCode`));
  
  INSERT INTO `offices` VALUES ('1','San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080','NA'),
  ('2','Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','02107','NA'),
  ('3','NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022','NA'),
  ('4','Paris','+33 14 723 4404','43 Rue Jouffroy D\'abbans',NULL,NULL,'France','75017','EMEA'),
  ('5','Tokyo','+81 33 224 5000','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan'),
  ('6','Sydney','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC'),
  ('7','London','+44 20 7877 2041','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');

 select * from offices;
 
--  question 5,query to fetch productName quantityInStock from products table and display 5 records only 
CREATE TABLE `products` (
  `productCode` varchar(15) NOT NULL,
  `productName` varchar(70) NOT NULL,
  `productLine` varchar(50) NOT NULL,
  `productScale` varchar(10) NOT NULL,
  `productVendor` varchar(50) NOT NULL,
  `productDescription` text NOT NULL,
  `quantityInStock` smallint NOT NULL,
  `buyPrice` decimal(10,2) NOT NULL,
  `MSRP` decimal(10,2) NOT NULL,
  PRIMARY KEY (productCode),
 KEY productLine (productLine));

 INSERT INTO products VALUES ('S10_1678','1969 Harley Davidson Ultimate Chopper','Motorcycles','1:10','Min Lin Diecast','This replica features working kickstand, front suspension, gear-shift lever, footbrake lever, drive chain, wheels and steering. All parts are particularly delicate due to their precise scale and require special care and attention.',7933,48.81,95.70),
  ('S10_1949','1952 Alpine Renault 1300','Classic Cars','1:10','Classic Metal Creations','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',7305,98.58,214.30),
  ('S10_2016','1996 Moto Guzzi 1100i','Motorcycles','1:10','Highway 66 Mini Classics','Official Moto Guzzi logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.',6625,68.99,118.94),
  ('S10_4698','2003 Harley-Davidson Eagle Drag Bike','Motorcycles','1:10','Red Start Diecast','Model features, official Harley Davidson logos and insignias, detachable rear wheelie bar, heavy diecast metal with resin parts, authentic multi-color tampo-printed graphics, separate engine drive belts, free-turning front fork, rotating tires and rear racing slick, certificate of authenticity, detailed engine, display stand\r\n, precision diecast replica, baked enamel finish, 1:10 scale model, removable fender, 
  seat and tank cover piece for displaying the superior detail of the v-twin engine',5582,91.02,193.66);

 select   productName quantityInStock from products 
 order by buyPrice asc
 limit 5;


