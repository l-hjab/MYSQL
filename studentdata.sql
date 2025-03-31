-- creating a table
create table student(
 ID int primary Key,
 fullName varchar(100) NOT NULL,
 Age int);

-- inserting records in table students
insert into student values(1,'Horace Jules',23),
  (2,'Kimmie Gakii',25),
  (3,'Mallorie Mukiri',24);

-- modifying data in table students
update student 
 set age=20
where ID=2;