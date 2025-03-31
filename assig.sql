-- create database employeedata;
-- use employeedata;
-- create table payment(
-- staffID int primary key,
-- firstName varchar (50),
-- lastName varchar (50),
-- checkNumber int,
-- paymentDate varchar(100),
-- Amount int
-- );
-- describe payment;
-- insert into payment values
-- (123,'Jane','Kanario',321230,'12/2/23',45000),
-- (124,'Peter','Bundi',231340,'13/3/23',54000),
-- (125,'Douglas','Bundi',232340,'14/3/23',64000),
-- (126,'Phinias','kanario',234340,'13/3/23',76000),
-- (127,'penina','BKanrio',235340,'14/3/23',94000),
-- (128,'Silas','Kirimi',236340,'12/3/23',87000);

-- alter table payment
-- add email varchar (100);
 -- update payment set email='janekanario@gmail.com'
--  where staffID=123
--  ;
--  update payment set firstName = 'Peninah'
--  where staffID=127;
 
 select checkNumber,paymentDate,Amount from payment;
 
 select orderDate,requiredDate from  orders
 where description like '%process%';
 
 select
 

select * from payment;



