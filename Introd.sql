-- create database Prod;
-- use Prod;
-- create table Products (
-- productID int primary key auto_increment, name varchar (100) not null, type varchar (50) not null,Quantity int
-- );
-- describe Products;
insert into Products values 
(1,'macadamia','Accepted',2000,'Kirinyaga26'),
(2,'macadamia','Rejected',918,'Muranga20'),
(3,'grafted','Accepted',10200,'Meru3');

-- select * from Products;

-- alter table Products
-- ADD column Category varchar (100);

-- describe Products;

-- insert into Products values (5,'Kirinyaga26','nuts',2500,'Quality Nuts');
-- select * from Products;

-- select * from Products where Quantity > 2000;
-- select name,Quantity from Products;
-- select * from Products order by Quantity ;
-- truncate table Products;
select * from Products;
-- drop database batian;

