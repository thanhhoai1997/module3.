
create table lass(
id int ,
name_ varchar(100)
);
create table teacher(
id int primary key auto_increment,
name_ varchar(100),
age int not null,
country varchar(100)
);
-- THAO TAC VOI DU LIEU TRONG BANG :
-- them tat ca du lieu vao bang : 
insert into class values(1,"hoai"),(2,"quy"),(3,"trung");
insert into teacher values(1,"thanh",12,"vietnam"),(3,"tien",14,"usa"),(5,"bao",19,"china"),(7,teacher,"tien",7,"usa");
-- them du lieu can them vao bang ( cac gia tri not null bat buoc phai co) : 
insert into teacher(name_,age) values("hoa",22),("thanh",18);
-- ------------------------------------------
-- THAO TAC VOI HAM ALTER :
-- them 1 thuoc tinh vao bang : 
alter table teacher add address varchar(50);
-- them nhieu thuoc tinh vao bang : 
alter table teacher add gender bit(1), add day_of_bith date;
-- chinh sua lieu du lieu cua 1 cot trong bang : 
alter table teacher 
modify column country varchar(90);
-- xoa 1 cot trong bang:
alter table teacher 
drop column age;
-- thay doi ten bang : 
alter table teachers
rename to teacher;
-- -------------------------------------------------------------------
-- UPDATE DU LIEU TRONG BANG : 
-- TH1: neu where thuoc tinh do k phai la primary key ( khoa chinh) : 
set sql_safe_updates = 0;
update teacher set day_of_bith = "2000-02-02" where name_ = "thanh";
set sql_safe_updates = 1;
-- TH2 : neu where la khoa chinh : 
update teacher set day_of_bith = "2001-12-08" where id = 3;  
-- -----------------------------------
-- CAU LENH SELECT AND FROM:
-- lấy danh sách dữ liệu của một hoặc nhiều bảng trong database:
-- TH1 : lay 1 vai du lieu trong bang : 
select id,name_,country from teacher;
-- TH2: lay tat ca du lieu trong bang : 
select* from teacher;
-- ------------------------------------
-- SU DUNG DROP DE XOA DATABASE OR TABLE : 
drop database student_management;
drop table teacher;
 use quanlydaotao1;
 delimiter $$
 create procedure nhanvien1()
 begin 
 select*from nhanvien;
 end$$
 delimiter ;
 call nhanvien1;
 
 create table bill(
 id int primary key auto_increment,
 userID int,
 productID int,
 quantity int
 );

 
 create table product(
 id int primary key auto_increment,
 product_name varchar(50),
 quantity int
 );
 
 insert into product (product_name,quantity) values ("thuoc la",1000),("kem danh rang",500);
  insert into bill (userID,productID,quantity) values (1,1,10);
  update product set quantity  = 1000 - 10 where id = 1;
  
  delimiter $$
  create procedure  taobill( in inUserID int,in inProductID int, in inQuantity int)
  begin
  insert into bill (userID,productID,quantity) values (inUserID,inProductID,inQuantity);
  update product set quantity = quantity - inQuantity where id = 1;
  
  end$$
  delimiter ;
   call taobill(4,1,10);
   
   delimiter $$ 
   create trigger before_bill_create before insert  on bill for each row
   begin
		update product set quantity = quantity - new.quantity where id = new.productID;
   end$$
   
   delimiter ;
   insert into  bill (userID,productID,quantity) values(1,1,20);
   delimiter $$
   create trigger before_bill_update before  update on bill for each row
begin
	update product set quantity = quantity - old.quantity +  new.quantity where id = old.productID; 
end$$
delimiter ;
update bill set quantity = 150  where id = 6;

   
   
   



