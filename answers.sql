-- question 1 ,retrieve data checkNumber,paymentDate,Amount from payments table
 select checkNumber,paymentDate,Amount from payments;
 
--  question 2,to retrieve orderDate,requiredDate and status of   orders that are currently 'In Process' in descending order
 select orderDate,requiredDate from  orders
 where orders like '%In Process%'
 order by orderDate desc;
 
--  question 3,to display firstName,lastName,email from employees table who's job title is 'Sales Rep'
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



