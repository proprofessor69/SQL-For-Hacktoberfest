create table student(st_roll int primary key, name varchar(30),mark float);

#trigger command for before inserting data checks the marks if it is zero then set it 50 
delimiter //
create trigger marks_update
before insert on student 
for each row
if new.mark < 0 then set new.mark=50
;
end if; //
insert into student(st_roll,name,mark)
values(102,'Jam',34),(103,'Rahul',-23),(104,'Tom',-1),(105,'Jerry',35);
select * from student;