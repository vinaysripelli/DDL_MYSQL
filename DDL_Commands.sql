-- creating a database in mysql server
create database vinay; -- vinay name of the database

-- use the created database 
use vinay;

/* DDL (Data Defination Language) 
DRCAT - Drop, Rename, Create, Alter and Truncate 
*/
/* Syntax 
Values should be inserted with parenthsis
Columns name should be without parenthsis
*/

-- creating a student table in 'vinay database' 

create table students(
id integer, 
sname char(30),
age integer,
course char(30));

-- view the values in the database
select * from students;

-- create patients table 
create table patients(
pid integer,
pname char(30),
age integer,
dob date,
tob datetime);

/* Format to insert a data into a table
   date (yyyy-mm-dd)
   datetime (yyyy-mm-dd hh:mm:ss)
   */

-- Using Alter command Drop a column
alter table patients drop column age;

select * from patients;

/* Alter command Rename a column
   Rename: we can rename the column name and table name as well */
   
alter table patients rename column dob to date_of_birth; -- column name
alter table patients rename to host_patients;	-- table name

/*adding a column into a table using ADD*/
alter table host_patients add column disease varchar(30);
select * from host_patients;

/*Modify a column datatype in a table*/
alter table host_patients modify column pname varchar(50);

desc host_patients; -- describe about the table

show tables; -- show tables containing in the database