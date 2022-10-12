use classicmodels;

#Q1. write subquery for printing data whose price less than $100 
desc orderdetails;
desc products;
select * from orderdetails;
select * from  products;
select productCode,productName,buyPrice,MSRP from products
where productCode in (select productCode from orderdetails 
where priceEach<=100);