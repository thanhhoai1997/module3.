create database QuanLyDiemThi;
create table hocsinh(
ma_hs varchar(20) primary key,
ten_hs varchar(50),
ngaysinh datetime,
lop varchar(20),
gt varchar(20)
);
create table MonHoc(
ma_mh varchar(20) primary key,
ten_mh varchar(50)
);
create table BangDiem(
ma_hs varchar(20),
ma_mh varchar(20),
diemthi int,
ngaykt datetime,
primary key(ma_hs,ma_mh),
foreign key (ma_hs) references hocsinh(ma_hs),
foreign key(ma_mh) references monhoc(ma_mh)
);

create table GiaoVien(
ma_gv varchar(20) primary key,
ten_gv varchar(10),
sdt varchar(10)

);
alter table monhoc add ma_gv varchar(20);
alter table monhoc add constraint fk_magv foreign key(ma_gv) references giaovien(ma_gv);
