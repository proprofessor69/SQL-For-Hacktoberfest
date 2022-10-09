use sql_intro;
show tables;
select * from employees;

#stored Procedure 

delimiter &&
create procedure maleEmployee()
begin
select emp_name,age,dept,city from employees where gender ='MALE';
end &&
delimiter ;

call maleEmployee()

#Stored Pocedure using IN operator 
# we want to display that employee which is getting highest salary

delimiter //
create procedure Sort_Employee(in var int)
begin
select emp_id,emp_name,gender,salary from employees
order by salary desc limit var;
end //
delimiter ;
call Sort_Employee(3)

delimiter //
create procedure update_empsalary (in em_name varchar(5), in newSalary decimal)
begin
update  employees
set salary = newSalary where emp_name=em_name;
end //
delimiter ;
select * from employees;
call update_empsalary('JOCKY',5550.76 )


#stored procedure using out 

delimiter //
create procedure countFemaleEmp(out totalFemaleEmp int)
begin 
select count(emp_name) into totalFemaleEmp from employees where gender='FEMALE';
end //
delimiter ; 

call countFemaleEmp(@f_count);
select @f_count as Total_Female_Employee;



