#Row number
select row_number() over (order by salary) as S_NO,
emp_name,salary from employees order by salary;

create table demo_dup_student (std_id int , std_name varchar(20));

insert into demo_dup_student(std_id,std_name)
values(101,'Raskim'),
(101,'Raskim'),(101,'Raskim'),(102,'Takm'),(103,'Rim'),(103,'Rim'),(104,'Jam'),(105,'Game'),(105,'Game');


select std_id,std_name,row_number() over
(partition by std_id,std_name ) as Total_Occurr from demo_dup_student;

select * from demo_dup_student;