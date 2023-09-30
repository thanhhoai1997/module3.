create database quanlykhohang;
use quanlykhohang;
create table nhacungcap(
ma_nhacungcap varchar(20),
ten_nhacungcap varchar(100),
diachi varchar(100),
primary key(ma_nhacungcap)
);

create table sdt(
id int auto_increment,
phone int,
ma_nhacungcap varchar(20),
primary key(id),
foreign key(ma_nhacungcap) references nhacungcap(ma_nhacungcap)
 
);

create table dondathang(
so_hopdong varchar(20),
ngay_hopdong date,
ma_nhacungcap varchar(20),
primary key(so_hopdong),
foreign key(ma_nhacungcap) references nhacungcap(ma_nhacungcap)
);

create table vattu(
ma_vattu varchar(20),
ten_vattu varchar(100),
primary key(ma_vattu)
);
create table vattu_dondathang(
so_hopdong varchar(20),
ma_vattu varchar(20),
primary key(so_hopdong,ma_vattu),
foreign key (so_hopdong) references dondathang(so_hopdong),
foreign key(ma_vattu) references vattu(ma_vattu)
);

create table phieunhap(
so_phieunhap varchar(20),
ngaynhap date,
primary key(so_phieunhap)
);

create table vattu_phieunhap(
dongia_nhap double,
sl_nhap int,
ma_vattu varchar(20),
so_phieunhap varchar(20),
check(dongia_nhap > 0),
primary key(ma_vattu,so_phieunhap),
foreign key(ma_vattu) references vattu(ma_vattu),
foreign key(so_phieunhap) references phieunhap(so_phieunhap)

);
create table phieuxuat(
so_phieuxuat varchar(20),
ngayxuat date,
primary key(so_phieuxuat)
);

create table vatttu_phieuxuat(
dongia_xuat double,
soluong_xuat int,
so_phieuxuat varchar(20),
ma_vattu varchar(20),
check(dongia_xuat > 0),
primary key(so_phieuxuat,ma_vattu),
foreign key(so_phieuxuat) references phieuxuat(so_phieuxuat),
foreign key(ma_vattu) references vattu(ma_vattu)
);