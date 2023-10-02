use quanlysinhvien;
create table customer(
c_id int,
c_name varchar(25),
c_age tinyint,
primary key(c_id)
);
insert into customer values(1,"Minh Quan",10),(2,"Ngoc Oanh",20),(3,"Minh Quan",50);

create table oder(
o_id int,
c_id int,
o_date date,
o_total_price int,
primary key(o_id),
foreign key(c_id) references customer(c_id)
);
insert into oder(o_id,c_id,o_date) values(1,1,"2006-03-21"),(2,2,"2006-03-23"),(3,1,"2006-03-16");

create table product(
p_id int,
p_name varchar(25),
p_price int,
primary key(p_id)
);

insert into product values (1,"May Giat",3),(2,"Tu Lanh",5),(3,"Dieu Hoa",7),(4,"Quat",1),(5,"Bep Dien",2);

create table order_detail(
o_id int,
p_id int,
od_qty int,
primary key(o_id,p_id),
foreign key(o_id) references oder(o_id),
foreign key(p_id) references product(p_id)
);
insert into order_detail values(1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);

select o.o_id,o.o_date,o.o_total_price 
from oder as o;

select*
from customer as c
inner join oder as o
on c.c_id = o.c_id
inner join order_detail as od
on o.o_id = od.o_id
inner join product as p
on p.p_id = od.p_id;

select c.c_name
from customer as c
 left join oder as o
 on c.c_id = o.c_id
 left join order_detail as od
 on o.o_id = od.o_id
 left join product as p
 on p.p_id = od.p_id
 where p.p_name is null ;
 
 update customer set c_name = "Hong Ha" where c_id = 3;

 select o.o_id,o.o_date,  sum(p.p_price*od.od_qty)   from oder  as o
 inner join order_detail as od
 on o.o_id = od.o_id 
 inner join product as p
 on p.p_id = od.p_id 
 group by o.o_id; 
 ;
 




