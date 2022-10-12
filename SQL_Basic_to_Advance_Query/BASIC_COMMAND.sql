create database sql_intro;
use sql_intro;
create table employees(emp_id int , emp_name varchar(43),age int ,gender varchar(20),
 doj date,dept varchar(25),city varchar(20));
desc employees;
alter table employees add constraint primary key(emp_id);
desc employees;
#INSERT INTO THE TABLE 
insert into  employees(emp_id, emp_name,age,gender,doj,dept,city)
value(1,'ROCKY',34,'MALE','2020-10-01','DEALING','BHOPAL')
;

insert into  employees(emp_id, emp_name,age,gender,doj,dept,city)
value(2,'JOCKY',23,'MALE','2004-10-11','MANAGER','HYDERABAD')
,
(3,'LUCI','43','FEMALE','2005-12-18','EVENT MANGER','BANGLORE');

#SELECT FROM THE TABLE
SELECT * FROM EMPLOYEES;

#Below Query is used find that employee name and dept whose age is greater than average age.
SELECT emp_name,dept from employees where 
age > (select avg(age) from employees);

alter table employees
add column salary int;

desc employees;

#update the salary column 
update employees set salary=4000 where age<30;
update employees set salary=5000 where age between 30 and 40 ;
update employees set salary=5500 where age between 40 and 45;
select emp_id ,emp_name,salary from employees;


alter table employees
modify  salary decimal(18,2) not null;

desc employees;


update employees set salary=4000.01 where age<30;
update employees set salary=5000.02 where age between 30 and 40 ;
update employees set salary=5500.03 where age between 40 and 45;
select emp_id ,emp_name,salary from employees;

desc employees;

#Query for getting employee name that have the salary greater than average salary
select emp_name,salary as Money from employees
where salary>(select avg(salary) from employees); 


#Query for getting the data of employees whose salary greater than 'lucci' 's salary

select emp_name,salary from employees;
select emp_name,gender,age,salary from employees
where salary>(select salary from employees where emp_name='LUCI');
  
insert into  employees(emp_id, emp_name,age,gender,doj,dept,city,salary)
value(4,'ANAY',28,'FEMALE','2014-10-01','MARKETING','DELHI',4000.24)
,
(5,'DIKSH','24','FEMALE','2018-10-18','IT','BANGLORE',7030.89);

select * from employees;


