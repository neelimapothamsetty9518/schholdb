----------------created school table--------------
create table school
(StudentId int primary Key,
firstName varchar(20),
lastName varchar(20),
classID int);
----------alter table to add foreign key--------
alter table school
add constraint  Fk_stu_class foreign key(classId) references classes(classId)
----------------create another table classes---------
create table classes
(classId int,
className varchar(20));
 insert into classes values(101,'first'),(201,'second'),(301,'third'),(401,'fourth');
 ----alter classes table to add primary key---------
 alter table classes 
 add constraint  pk_classid primary key(classId); 
 -- Modify the Classes table to make ClassID not nullable
ALTER TABLE classes
ALTER COLUMN classID INT NOT NULL;
-----to display table-------
 select * from classes
 select * from school
 
 insert into school(StudentId,firstName,lastName,classId) values(11,'john','smith',101),(12,'james','gosh',201),(13,'arniz','thomos',301);

 create index Index_School_classID on school(classID)

 create table subject(subject_id int Primary key,subject_name varchar(20))
 create index ind_classes_classname on classes(className)

 insert into subject values(2,'english'),(3,'maths')

 select * from subject