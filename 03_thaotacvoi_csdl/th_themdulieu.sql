create table Class(
class_id int auto_increment,
class_name varchar(50),
start_date date,
status bit,
primary key(class_id)
);

insert into Class values(1,"A1","2008-12-20",1),(0,"A2","2008-12-20",1),(0,"B3",current_date(),0);

 create table Student(
 student_id int auto_increment,
 student_name varchar(50),
 address varchar(50),
 phone varchar(20) default "",
 status bit,
 class_id int ,
 primary key(student_id),
 foreign key(class_id) references Class(class_id)
 
 );
 
 insert into Student values(1,"Hung","Ha Noi","0912113113",1,1),(0,"Hoa","Hai Phong","",1,1),(0,"Manh","HCM","0123123123",0,2);
 
 create table Sub_ject(
 sub_id int auto_increment,
 sub_name varchar(10),
 credit int,
 status bit,
 primary key(sub_id)

 );
 
 insert into Sub_ject values(1,"CF",5,1),(0,"C",6,1),(0,"HDJ",5,1),(0,"RDBMS",10,1);

 
 create table Mark(
 mark_id int auto_increment,
 sub_id int,
 student_id int,
 mark tinyint,
 exam_times int,
 primary key(mark_id),
 foreign key(sub_id) references Sub_ject(sub_id),
 foreign key(student_id) references student(student_id)
 );
 
 insert into Mark values(1,1,1,8,1),(2,1,2,10,2),(3,2,1,12,1);
 update Sub_ject set sub_id = 2 where sub_id = 6;
 update Sub_ject set sub_id = 3 where sub_id = 7;
  update Sub_ject set sub_id = 4 where sub_id = 8;
   select*from student;
   select*from student where status = true;
   select*from sub_ject;
   select*from sub_ject where credit < 10;
   select*from class;
   select*from class where class_name in ("A1");
   select s.student_id, s.student_name,c.class_id,c.class_name from student as s
   inner join class as c
   on s.class_id = c.class_id
   where class_name in ("A1");
   
   select s.student_name,su.sub_name,m.mark from mark as m
   inner join student as s
   on m.student_id = s.student_id
   inner join sub_ject as su
   on su.sub_id  = m.sub_id
   where sub_name in ("CF"); 
   
   
   
  

 
 