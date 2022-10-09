#views in sql
use classicmodels;
select * from customers;
create view cust_details
as select customerName,phone ,city from customers;

select * from cust_details;

select * from productlines;

create view product_description
as
select productName,quantityinstock,MSRP,textDescription from products as p inner join
productlines as pl on p.productline=pl.productline;

select * from product_description;


#rename description 
rename table product_description to vechile;

select * from vechile;

# Display all views 

show full tables 
where table_type='VIEW';

#delete view
drop view cust_detail_country;


use sql_intro;
show tables;
select * from employees;
alter table employees
modify emp_id  int auto_increment;
insert into  employees( emp_name,age,gender,doj,dept,city,salary)
value('JIMMY',34,'MALE','2020-10-01','DEALING','BHOPAL',4782),
('YANK',23,'MALE','2004-10-11','MANAGER','HYDERABAD',8421)
,
('TIA','43','FEMALE','2005-12-18','EVENT MANGER','BANGLORE',7841)
;

insert into  employees( emp_name,age,gender,doj,dept,city,salary)
value('KAMERI',23,'MALE','2004-10-11','MANAGER','HYDERABAD',5545)
,
('KANI','43','FEMALE','2005-12-18','EVENT MANGER','BANGLORE',8458)
,('AMIN',34,'MALE','2020-10-01','DEALING','BHOPAL',9754);

select * from employees;

select emp_name,age,dept,sum(salary) over (partition by dept) as total_salary 
from employees;