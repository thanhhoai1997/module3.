use quanlybanhang;
create table customer(
id_customer int auto_increment,
name_customer varchar(100),
age tinyint ,
primary key(id_customer)
);

create table oder(
id_oder int not null,
id_customer int,
date_oder date,
total_price double,
primary key(id_oder),
foreign key(id_customer) references customer(id_customer)
);

create table product(
id_product int not null,
name_product varchar(100),
price double,
primary key(id_product)
);

create table oder_product(
so_luong int,
id_oder int not null,
id_product int not null,
primary key(id_oder, id_product),
foreign key(id_oder) references oder(id_oder),
foreign key(id_product) references product(id_product)
);
