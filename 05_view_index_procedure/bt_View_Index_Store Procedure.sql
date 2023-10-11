create database demo;
use demo;
create table products (
id int auto_increment,
product_code varchar(20),
product_name varchar(50),
product_price double,
product_amount int,
product_description varchar(100),
product_status bit,
primary key(id)
);
insert into products(product_code,product_name,product_price,product_amount,product_description,product_status) values
("i1","iphone11",8000000,9,"Tot",1),("i2","iphone12",9000000,10,"ok",0),("i3","iphone13",12000000,18,"Tot",1);

create index product_code_idx on products (product_code);
create index product_name_price on products(product_name,product_price);

explain select *from products where product_code = "i3";
explain select *from products where product_name = "iphone13";
explain select *from products where product_price = 9000000;

create view views_product as
select product_code,product_name,product_price,product_status from products;
select*from views_product;

set sql_safe_updates = 0;
update views_product set product_name = "ip 14" where product_code = "i1";
set sql_safe_updates = 1;

 create or replace view views_product as
 select product_code,product_name,product_price from products ;
 select*from  views_product;
 
 drop view views_product;
 -- ----------------------
 delimiter //
 create procedure get_product ()
 begin
  select*from products;
 end//
 delimiter ;
 call get_product;
 -- ----------------------------
 delimiter //
 create procedure insert_product(in p_code varchar(20), in p_name varchar(50), in p_price double, in p_amount int,in p_des varchar(100), p_status bit)
 begin
  insert into products(product_code,product_name,product_price,product_amount,product_description,product_status) values
  (p_code,p_name,p_price,p_amount,p_des,p_status);
 end //
 delimiter ;
 call insert_product("i4","iphone14",14000000,19,"ok",1);
 -- -------------------------
 
 delimiter //
 create procedure update_product(in id_p int, in name_p varchar(100))
 begin
 update products set products.product_name = name_p where products.id = id_p;
 
 end//
 delimiter ;
 call update_product(1,"iphone15");
 -- ----------------
 
 delimiter //
 create procedure delete_product(in id_delete int)
 begin
delete from products where products.id = id_delete;

 end//
 delimiter ;
 call delete_product(4);

 
 





  
