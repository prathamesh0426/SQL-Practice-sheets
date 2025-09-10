-- 1 Create database institute
create database institute;

-- 2 use database institute
use institute;

-- 3 create table teacher with columns id,teacher_name,email,contact,doj
create table teacher(
id int primary key,
teacher_name varchar(50),
email varchar(50),
contact char(10),
doj date 
);


-- 4 view table teacher
select * from teacher;


-- 5 insert record in table teacher
insert into teacher
values
(101,  "Rohit sir", "rohit@gmail.com", 8963568956, "2021-07-23"),
(102, "Pranav sir", "pranav@gmail.com",5864789654, "2022-03-12"),
(103, "Jivan sir", "jivan@gmiail.com", 9876543218, "2024-09-20"),
(104, "Prathamesh sir", "prathamesh@gmail.com", 9356869370, "2019-12-24"),
(105, "Shivani mam", "shivani@gmail.com", 8794568795, '2018-04-23');

-- 6. view record of table
 select * from teacher;
 

-- update email using where clause
update teacher
set email = "pratham@gmail.com"
where email = "prathamesh@gmail.com";

-- update column email without using where
update teacher
set email = "duplicate@gmail.com";


-- set SQL_SAFE_UPDATES mode to 0
set sql_safe_updates = 0;


-- update column email without using where
update teacher
set email = "example@gmial.com";


-- view table
select * from teacher;



-- 7. set the safe update mode to 1

set SQL_SAFE_UPDATES= 1;

-- 8. Update the email for any user
update teacher
set email = "Rohit@gmail.com"
where id = 101;


-- 9. View the records of table
select * from teacher;


-- 10. update  contact and name for any user in existing table
update teacher
set contact = 8529637418, teacher_name = "Rahul"
where id = 104;


-- 11. View the updated table
select * from teacher;



-- 12. Add multiple conditions in where clause
update teacher
set teacher_name = "Rahul sir"
where id = 104 and contact = 8529637418;


-- 13. Check teacher table again
select * from teacher;


-- 14. Deleting an entry
delete from teacher
where id = 105; 



-- change the SQL_SAFE_UPDATES to 0;
set sql_safe_updates = 0;


-- display records of teacher
select * from teacher;


-- update record 1 set email as anushka@gmail.com
update teacher
set email = 'anushka@gmail.com'
where id = 101;


-- 16. MySQL DELETE and LIMIT Clause
delete from teacher
limit 1;

-- delete FROM teacher ORDER BY name LIMIT 3;  
delete from teacher
order by teacher_name limit 3;

select * from teacher;
-- 16. Turn on SQL_SAFE_UPDATES
set sql_safe_updates = 1;

-- 17.  Create table student with Autoincrement in sr. no.
create table student(
sid int primary key auto_increment,
sname varchar(100),
sage int
);



-- 18. Describe the table
select * from student;

-- 19. For first time add a single entry
insert into student
values
(1, "Rohit", 21);


-- 20. Check the table
select * from student;

-- 21. Add multiple entries
insert into student
(sname, sage)
values
("Ankita", 20),
("Pranav", 22);
       
-- 22. View the table
select * from student;


-- delete a single entry
delete from student
where sid = 3;
