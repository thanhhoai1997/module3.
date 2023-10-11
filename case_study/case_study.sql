
create  database  furamaResort ;
use furamaresort;

create table vitri(
ma_vi_tri int,
ten_vi_tri varchar(45),
primary key (ma_vi_tri)
);

insert into vitri values(1,"Quản Lý"),(2,"Nhân Viên");

create table trinhdo(
ma_trinh_do int,
ten_trinh_do varchar(45),
primary key(ma_trinh_do)
);

insert into trinhdo values(1,"Trung Cấp"),(2,"Cao Đẳng"),(3,"Đại Học"),(4,"Sau Đại Học");

create table bophan(
ma_bo_phan int,
ten_bo_phan varchar(45),
primary key(ma_bo_phan)
);

insert into bophan values(1,"Sale-Marketing"),(2,"Hành Chính"),(3,"Phục Vụ"),(4,"Quản lý");

create table nhanvien(
ma_nhan_vien int,
ho_ten varchar(45),
ngay_sinh date,
so_cmnn varchar(45),
luong double,
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int,
primary key(ma_nhan_vien),
foreign key(ma_vi_tri) references vitri(ma_vi_tri),
foreign key(ma_trinh_do) references trinhdo(ma_trinh_do),
foreign key(ma_bo_phan) references bophan(ma_bo_phan)

);

insert into nhanvien values(1,"Nguyễn Văn An","1970-11-07","456231786",10000000,"0901234121","annguyen@gmail.com","295 Nguyễn Tất Thành, Đà Nẵng",1,3,1),
(2,"Lê Văn Bình","1997-04-09","654231234",7000000,"0934212314","binhlv@gmail.com","22 Yên Bái, Đà Nẵng",1,2,2),
(3,"Hồ Thị Yến","1995-12-12","999231723",14000000,"0412352315","thiyen@gmail.com","K234/11 Điện Biên Phủ, Gia Lai",1,3,2),
(4,"Võ Công Toản","1980-04-04","123231365",17000000,"0374443232","toan0404@gmail.com","77 Hoàng Diệu, Quảng Trị",1,4,4),
(5,"Nguyễn Bỉnh Phát","1999-12-09","454363232",6000000,"0902341231","phatphat@gmail.com","43 Yên Bái, Đà Nẵng",2,1,1),
(6,"Khúc Nguyễn An Nghi","2000-11-08","964542311",7000000,"0978653213","annghi20@gmail.com","294 Nguyễn Tất Thành, Đà Nẵng",2,2,3),
(7,"Nguyễn Hữu Hà","1993-01-01","534323231",8000000,"0941234553","nhh0101@gmail.com","4 Nguyễn Chí Thanh, Huế",2,3,2),
(8,"Nguyễn Hà Đông","1989-09-03","234414123",9000000,"0642123111","donghanguyen@gmail.com","111 Hùng Vương, Hà Nội",2,4,4),
(9,"Tòng Hoang","1982-09-03","256781231",6000000,"0245144444","hoangtong@gmail.com","213 Hàm Nghi, Đà Nẵng",2,4,4),
(10,"Nguyễn Công Đạo","1994-01-08","755434343",8000000,"0988767111","nguyencongdao12@gmail.com","6 Hoà Khánh, Đồng Nai",2,3,2);


create table loaikhach(
ma_loai_khach int,
ten_loai_khach varchar(45),
primary key(ma_loai_khach)
);

insert into loaikhach values(1,"Diamond"),(2,"Platinium"),(3,"Gold"),(4,"Silver"),(5,"Member");

create table khachhang(
ma_khach_hang int,
ma_loai_khach int,
ho_ten varchar(45),
ngay_sinh date,
gioi_tinh bit(1),
so_cmnn varchar(45),
so_dien_thoai varchar(45),
email varchar(45) unique,
dia_chi varchar(45),
primary key (ma_khach_hang),
foreign key(ma_loai_khach) references loaikhach(ma_loai_khach)
);

insert into khachhang values(1,5,"Nguyễn Thị Hào","1970-11-07",0,"643431213","0945423362","thihao07@gmail.com","23 Nguyễn Hoàng, Đà Nẵng"),
(2,3,"Phạm Xuân Diệu","1992-08-08",1,"865342123","0954333333","xuandieu92@gmail.com","K77/22 Thái Phiên, Quảng Trị"),
(3,1,"Trương Đình Nghệ","1990-02-27",1,"488645199","0373213122","nghenhan2702@gmail.com","K323/12 Ông Ích Khiêm, Vinh"),
(4,1,"Dương Văn Quan","1981-07-08",1,"543432111","0490039241","duongquan@gmail.com","K453/12 Lê Lợi, Đà Nẵng"),
(5,4,"Hoàng Trần Nhi Nhi","1995-12-09",0,"795453345","0312345678","nhinhi123@gmail.com","224 Lý Thái Tổ, Gia Lai"),
(6,4,"Tôn Nữ Mộc Châu","2005-12-06",0,"732434215","0988888844","tonnuchau@gmail.com","37 Yên Thế, Đà Nẵng"),
(7,1,"Nguyễn Mỹ Kim","1984-04-08",0,"856453123","0912345698","kimcuong84@gmail.com","K123/45 Lê Lợi, Hồ Chí Minh"),
(8,3,"Nguyễn Thị Hào","1999-04-08",0,"965656433","0763212345","haohao99@gmail.com","55 Nguyễn Văn Linh, Kon Tum"),
(9,1,"Trần Đại Danh","1994-07-017",1,"432341235","0643343433","danhhai99@gmail.com","24 Lý Thường Kiệt, Quảng Ngãi"),
(10,2,"Nguyễn Tâm Đắc","1989-07-01",1,"344343432","0987654321","dactam@gmail.com","22 Ngô Quyền, Đà Nẵng");

create table kieuthue(
ma_kieu_thue int,
ten_kieu_thue varchar(45),
primary key(ma_kieu_thue)
);

insert into kieuthue values(1,"year"),(2,"month"),(3,"day"),(4,"hour");

create table loaidichvu(
ma_loai_dich_vu int,
ten_loai_dich_vu varchar(45),
primary key (ma_loai_dich_vu)
);

insert into loaidichvu values (1, "Villa"),(2,"House"),(3,"Room");

create table dichvu(
ma_dich_vu int,
ten_dich_vu varchar(45),
dien_tich int,
chi_phi_thue double,
so_nguoi_toi_da int,
ma_kieu_thue int,
ma_loai_dich_vu int,
tieu_chuan_phong varchar(45),
mo_ta_tien_nghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int,
primary key(ma_dich_vu),
foreign key(ma_kieu_thue) references kieuthue(ma_kieu_thue),
foreign key(ma_loai_dich_vu) references loaidichvu(ma_loai_dich_vu)
);

insert into dichvu values(1,"Villa Beach Front",25000,10000000,10,3,1,"vip","Có hồ bơi",500,4),
(2,"House Princess 01",14000,5000000,7,2,2,"vip","Có thêm bếp nướng",null,3),
(3,"Room Twin 01",5000,1000000,2,4,3,"normal","Có tivi",null,null),
(4,"Villa No Beach Front",22000,9000000,8,3,1,"normal","Có hồ bơi",300,4),
(5,"House Princess 02",10000,4000000,5,3,2,"normal","Có thêm bếp nướng",null,2),
(6,"Room Twin 02",3000,900000,2,4,3,"normal","Có tivi",null,null);

create table hopdong(
ma_hop_dong int,
ngay_lam_hop_dong datetime,
tien_dat_coc double,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int,
primary key(ma_hop_dong),
foreign key(ma_nhan_vien) references nhanvien(ma_nhan_vien),
foreign key(ma_khach_hang) references khachhang(ma_khach_hang),
foreign key(ma_dich_vu) references dichvu(ma_dich_vu)
);

alter table hopdong
add ngay_ket_thuc datetime;

insert into hopdong values 
(1,"2020-12-08",0,3,1,3,"2020-12-08"),
(2,"2020-07-14",200000,7,3,1,"2020-07-21"),
(3,"2021-03-15",50000,3,4,2,"2021-03-17"),
(4,"2021-01-14",100000,7,5,5,"2021-01-18"),
(5,"2021-07-14",0,7,2,6,"2021-07-15"),
(6,"2021-06-01",0,7,7,6,"2021-06-03"),
(7,"2021-09-02",100000,7,4,4,"2021-09-05"),
(8,"2021-06-17",150000,3,4,1,"2021-06-18"),
(9,"2020-11-19",0,3,4,3,"2020-11-19"),
(10,"2021-04-12",0,10,3,5,"2021-04-14"),
(11,"2021-04-25",0,2,2,1,"2021-04-25"),
(12,"2021-05-25",0,7,10,1,"2021-05-27");


create table dichvudikem(
ma_dich_vu_di_kem int,
ten_dich_vu_di_kem varchar(45),
gia double,
don_vi varchar(10),
trang_thai varchar(45),
primary key(ma_dich_vu_di_kem)
);

insert into dichvudikem values
(1,"Karaoke",10000,"giờ","tiện nghi, hiện tại"),
(2,"Thuê xe máy",10000,"chiếc","hỏng 1 xe"),
(3,"Thuê xe đạp",20000,"chiếc","tốt"),
(4,"Buffet buổi sáng",15000,"suất","đầy đủ đồ ăn, tráng miệng"),
(5,"Buffet buổi trưa",90000,"suất","đầy đủ đồ ăn, tráng miệng"),
(6,"Buffet buổi tối",16000,"suất","đầy đủ đồ ăn, tráng miệng");


create table hopdongchitiet(
ma_hop_dong_chi_tiet int,
ma_hop_dong int,
ma_dich_vu_di_kem int,
so_luong int,
primary key(ma_hop_dong_chi_tiet),
foreign key(ma_hop_dong) references hopdong(ma_hop_dong),
foreign key(ma_dich_vu_di_kem) references dichvudikem(ma_dich_vu_di_kem)
);

insert into hopdongchitiet values
(1,2,4,5),
(2,2,5,8),
(3,2,6,15),
(4,3,1,1),
(5,3,2,11),
(6,1,3,1),
(7,1,2,2),
(8,12,2,2);

-- 2.Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu
-- là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
use furamaresort;
select * from nhanvien where char_length(ho_ten) <= 15 and (ho_ten like 'H%' or ho_ten like'T%' or ho_ten like 'K%');


-- 3.Hiển thị thông tin của tất cả khách hàng có độ tuổi
-- từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select*from khachhang;
select*from khachhang where year(current_date()) - year(ngay_sinh) between 18 and 50 and (dia_chi like '%Quảng Trị' or dia_chi like '%Đà Nẵng') ; 

-- 4.Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần.
-- Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàn.
--  Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
alter table loaikhach change column ten_khach_hang ten_loai_khach varchar(45);

select k.ho_ten , count(ma_hop_dong) from khachhang  as k
inner join loaikhach as l
on k.ma_loai_khach = l.ma_loai_khach
inner join hopdong as h
on k.ma_khach_hang = h.ma_khach_hang 
where l.ten_loai_khach = "Diamond"
group by (h.ma_khach_hang) order by count(ma_hop_dong);

-- 5.Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
-- (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet)
-- cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
use furamaresort;
select k.ma_khach_hang,k.ho_ten,l.ten_loai_khach,h.ma_hop_dong,d.ten_dich_vu,h.ngay_lam_hop_dong,
 h.ngay_ket_thuc,
 (ifnull(sum(dvdk.gia*hdct.so_luong),0) + (ifnull(d.chi_phi_thue,0))) tongtien 
 
 from khachhang as k
left join loaikhach as l
on k.ma_loai_khach = l.ma_loai_khach
left join hopdong as h
on k.ma_khach_hang = h.ma_khach_hang
left join dichvu as d
on h.ma_dich_vu = d.ma_dich_vu
 left join hopdongchitiet as hdct
on hdct.ma_hop_dong = h.ma_hop_dong
left join dichvudikem as dvdk
on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem group by  h.ma_hop_dong;

SELECT @@sql_mode ;
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

-- 6.Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu
-- của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt 
-- từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
 
select d.ten_dich_vu , d.ma_dich_vu,d.chi_phi_thue, l.ten_loai_dich_vu, d.dien_tich
from dichvu as d
inner join loaidichvu as l
on d.ma_loai_dich_vu = l.ma_loai_dich_vu
inner join hopdong as h
on h.ma_dich_vu = d.ma_dich_vu where d.ten_dich_vu not in 
( select d.ten_dich_vu from hopdong as h
inner join dichvu as d on d.ma_dich_vu = h.ma_dich_vu
 where year(h.ngay_lam_hop_dong) = 2021 and month(h.ngay_lam_hop_dong) <= 3
    ) group by d.ten_dich_vu,d.ma_dich_vu,d.chi_phi_thue, l.ten_loai_dich_vu, d.dien_tich ; 
    
-- 7.	Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu
-- của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 
-- nhưng chưa từng được khách hàng đặt phòng trong năm 2021.

select d.ma_dich_vu,d.ten_dich_vu,d.dien_tich,d.so_nguoi_toi_da,d.chi_phi_thue,l.ten_loai_dich_vu
from dichvu as d
inner join loaidichvu as l
on d.ma_loai_dich_vu = l.ma_loai_dich_vu
inner join hopdong as h
on d.ma_dich_vu = h.ma_dich_vu where d.ten_dich_vu in (select d.ten_dich_vu
from dichvu as d
inner join loaidichvu as l
on d.ma_loai_dich_vu = l.ma_loai_dich_vu
inner join hopdong as h
on d.ma_dich_vu = h.ma_dich_vu where year(h.ngay_lam_hop_dong) = 2020) and d.ten_dich_vu  not in (select d.ten_dich_vu
from dichvu as d
inner join loaidichvu as l
on d.ma_loai_dich_vu = l.ma_loai_dich_vu
inner join hopdong as h
on d.ma_dich_vu = h.ma_dich_vu where year(h.ngay_lam_hop_dong) = 2021) group by d.ma_dich_vu,d.ten_dich_vu,d.dien_tich,d.so_nguoi_toi_da,d.chi_phi_thue,l.ten_loai_dich_vu  ;

-- 8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
-- Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên.

-- 1
select khachhang.ho_ten from khachhang 
union 
select khachhang.ho_ten from khachhang ;
-- 2
select khachhang.ho_ten from khachhang group by khachhang.ho_ten;

-- 3

select distinct(ho_ten)  from  khachhang ;

-- 9.	Thực hiện thống kê doanh thu theo tháng,
-- nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng

select month(hopdong.ngay_lam_hop_dong) as thang , count(ma_hop_dong) as so_luong_khach from hopdong where year(hopdong.ngay_lam_hop_dong) = 2021 group by thang;

-- 10.	Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm.
-- Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem 
 -- (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).
 select h.ma_hop_dong , h.ngay_lam_hop_dong, h.ngay_ket_thuc,h.tien_dat_coc, sum(hdct.so_luong) from hopdong as h
 left join hopdongchitiet as hdct
 on h.ma_hop_dong = hdct.ma_hop_dong
 left join dichvudikem as dvdk
 on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem group by h.ma_hop_dong , h.ngay_lam_hop_dong, h.ngay_ket_thuc,h.tien_dat_coc;
 
-- 11.	Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng 
 -- có ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
 
 select dvdk.ma_dich_vu_di_kem,dvdk.ten_dich_vu_di_kem,dvdk.gia,dvdk.don_vi,dvdk.trang_thai from khachhang as k
 left join loaikhach as l
 on k.ma_loai_khach = l.ma_loai_khach
 left join hopdong as h
 on h.ma_khach_hang = k.ma_khach_hang
 left join hopdongchitiet as hdct
 on hdct.ma_hop_dong = h.ma_hop_dong
  join dichvudikem as dvdk
 on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem where l.ten_loai_khach  = "Diamond" and (k.dia_chi like '%Vinh' or k.dia_chi like '%Quảng Ngãi') ;
 ;
 
 -- 12.	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), ten_dich_vu, so_luong_dich_vu_di_kem
  -- (được tính dựa trên việc sum so_luong ở dich_vu_di_kem),
  -- tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 
   -- nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.

use furamaresort;

select h.ma_hop_dong, n.ho_ten,k.ho_ten, k.so_dien_thoai,d.ten_dich_vu, h.tien_dat_coc, sum(hdct.so_luong)
from khachhang as k 
left join hopdong as h
on k.ma_khach_hang = h.ma_khach_hang
left join nhanvien as n
on h.ma_nhan_vien = n.ma_nhan_vien
left join hopdongchitiet as hdct
on h.ma_hop_dong = hdct.ma_hop_dong
left join dichvu as d
on h.ma_dich_vu = d.ma_dich_vu where h.tien_dat_coc in
 (select tien_dat_coc from hopdong where year(h.ngay_lam_hop_dong) = 2020 and 
month(h.ngay_lam_hop_dong) >=10 ) 
and h.tien_dat_coc  not in 
(select tien_dat_coc from hopdong where year(h.ngay_lam_hop_dong) = 2021 and month(h.ngay_lam_hop_dong) <= 6
) group by h.ma_hop_dong, n.ho_ten,k.ho_ten, k.so_dien_thoai,d.ten_dich_vu, h.tien_dat_coc ;

-- 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).

select dvdk.ma_dich_vu_di_kem , dvdk.ten_dich_vu_di_kem, sum(hdct.so_luong) as so_luong_dich_vu_di_kem  from dichvudikem as dvdk
right join hopdongchitiet as hdct
on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
 group by dvdk.ma_dich_vu_di_kem  having  so_luong_dich_vu_di_kem >= all (select sum(hdct.so_luong)  as s 
 from dichvudikem as dvdk
right join hopdongchitiet as hdct
on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem  group by dvdk.ma_dich_vu_di_kem )   ;

-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất.
-- Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, 
-- so_lan_su_dung (được tính dựa trên việc count các ma_dich_vu_di_kem).
 select h.ma_hop_dong, dvdk.ten_dich_vu_di_kem, count(dvdk.ma_dich_vu_di_kem)  from  hopdong  as h
 left join dichvu as d
 on d.ma_dich_vu = h.ma_dich_vu
 left join loaidichvu as l
 on l.ma_loai_dich_vu = d.ma_loai_dich_vu
 left join hopdongchitiet as hdct
 on hdct.ma_hop_dong = h.ma_hop_dong
 left join dichvudikem as dvdk
 on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem  group by dvdk.ma_dich_vu_di_kem having count(dvdk.ma_dich_vu_di_kem) = 1 ;
 
use furamaresort;
 
 
 select  *  from  hopdong  as h
 left join dichvu as d
 on d.ma_dich_vu = h.ma_dich_vu
 left join loaidichvu as l
 on l.ma_loai_dich_vu = d.ma_loai_dich_vu
 left join hopdongchitiet as hdct
 on hdct.ma_hop_dong = h.ma_hop_dong
 left join dichvudikem as dvdk
 on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem;
 
 -- 15.	Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi
 -- mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
 select n.ho_ten,n.ma_nhan_vien, t.ten_trinh_do,b.ten_bo_phan,n.so_dien_thoai,n.dia_chi, count(h.ma_hop_dong) from  nhanvien as n
left join hopdong as h
on n.ma_nhan_vien = h.ma_nhan_vien
left join trinhdo as t
on n.ma_trinh_do = t.ma_trinh_do
left join bophan as b
on b.ma_bo_phan = n.ma_bo_phan where year(h.ngay_lam_hop_dong) between 2020 and 2021 group by
 n.ho_ten,n.ma_nhan_vien,t.ten_trinh_do,b.ten_bo_phan,n.so_dien_thoai,n.dia_chi having count(h.ma_hop_dong) <= 3;
;
 
-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021

 


SET FOREIGN_KEY_CHECKS=0; 
delete from nhanvien where ma_nhan_vien not in
(select t.ma_nhan_vien from 
(
select  n.ma_nhan_vien from nhanvien as n 
left join hopdong as h
on n.ma_nhan_vien = h.ma_nhan_vien where year(h.ngay_lam_hop_dong) between 2019 and 2021
) t);
SET FOREIGN_KEY_CHECKS=1;

-- 17.	Cập nhật thông tin những khách hàng có : 
 -- ten_loai_khach từ Platinum lên Diamond, chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền 
 -- thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
 
 
 
 create view get_makhachhang as
 select k.ma_khach_hang , (ifnull(sum(hdct.so_luong*dvdk.gia),0) + ifnull(d.chi_phi_thue,0))  tongtien  from khachhang as k
 left join hopdong as h
 on k.ma_khach_hang = h.ma_khach_hang 
 left join dichvu as d
 on d.ma_dich_vu = h.ma_dich_vu
 left join hopdongchitiet as hdct 
 on hdct.ma_hop_dong = h.ma_hop_dong
 left join dichvudikem as dvdk
 on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
 left join loaikhach as l
 on l.ma_loai_khach = k.ma_loai_khach where year(h.ngay_lam_hop_dong) = 2021 and l.ten_loai_khach = "Platinium"
 group by h.ma_hop_dong, k.ma_khach_hang having tongtien > 10000000;
 
 
 update khachhang set ma_loai_khach = 1 where ma_khach_hang in 
  (select ma_khach_hang from get_makhachhang)
 ;
 
 -- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
 
 SET FOREIGN_KEY_CHECKS=0; 
 delete from khachhang where ma_khach_hang in
 (select t.ma_khach_hang from
 (select k.ma_khach_hang from khachhang  as k
 left join hopdong as h
 on k.ma_khach_hang = h.ma_khach_hang where year(h.ngay_lam_hop_dong) < 2021) t);
SET FOREIGN_KEY_CHECKS=1;

-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.

select*  from hopdong as h
 join hopdongchitiet as hdct
on h.ma_hop_dong = hdct.ma_hop_dong
 join dichvu as d
on d.ma_dich_vu = h.ma_dich_vu
 join dichvudikem as dvdk
on hdct.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem  ;

-- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống,
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.

select k.ma_khach_hang, k.ho_ten, k.email, k.so_dien_thoai, k.ngay_sinh, k.dia_chi from khachhang as k
union all
select n.ma_nhan_vien, n.ho_ten, n.email, n.so_dien_thoai, n.ngay_sinh, n.dia_chi from nhanvien as n;

-- 21.	Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu” 
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”.

-- Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu”
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng nam 2021
create view v_nhan_vien as 
select n.ho_ten, n.ma_nhan_vien, n.dia_chi, n.ngay_sinh from nhanvien as n
where n.ma_nhan_vien in (select n.ma_nhan_vien from nhanvien as n
left join hopdong as h
on n.ma_nhan_vien = h.ma_nhan_vien 
where n.dia_chi like '%Đà Nẵng' and year(h.ngay_lam_hop_dong) = 2021)  ;




-- 22.	Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành 
-- “Liên Chiểu” đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.

update v_nhan_vien set dia_chi = "Liên Chiểu";

-- 23.Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó với ma_khach_hang
 -- được truyền vào như là 1 tham số của sp_xoa_khach_hang.
  
delimiter //
  create procedure sp_xoa_khach_hang (in ma_khach_hang int)
  begin
  SET FOREIGN_KEY_CHECKS=0;
	delete from khachhang where ma_khach_hang = ma_khach_hang;
  SET FOREIGN_KEY_CHECKS=1;
  end//
  delimiter ;
  
  call sp_xoa_khach_hang(1);
  
  -- 24.	Tạo Stored Procedure sp_them_moi_hop_dong dùng để thêm mới vào bảng hop_dong với 
  -- yêu cầu sp_them_moi_hop_dong phải thực hiện kiểm tra tính hợp lệ của dữ liệu bổ sung,
   -- với nguyên tắc không được trùng khóa chính và đảm bảo toàn vẹn tham chiếu đến các bảng liên quan
   
   delimiter //
   create procedure sp_them_moi_hop_dong (ma int , ngay_lam_hd datetime,tiendatcoc double,manhanvien int, makhachhang int, madichvu int,  ngayketthuc datetime, out result varchar(100) )
   
   begin
  declare true_ma_hop_dong int ;
  select max(ma_hop_dong) into true_ma_hop_dong from hopdong;
  if (ma <> true_ma_hop_dong + 1) then set result = "nhap sai ma hop dong";
  elseif(manhanvien not in (select ma_nhan_vien from nhanvien)) then set result  = "k tim thay ma nhan vien";
  elseif(makhachhang not in (select ma_khach_hang from khachhang)) then set result = "k tim thay ma khach hang";
  elseif(madichvu not in (select ma_dich_vu from dichvu)) then set result = "k tim thay ma dich vu";
  else insert into hopdong  values (ma,ngay_lam_hd,tiendatcoc,manhanvien,makhachhang,madichvu,ngayketthuc);
  end if;
   end//
  
  delimiter ;
  
  call sp_them_moi_hop_dong (13,"2020-12-08 00:00:00" ,90000, 1,21,1, "2020-12-08 00:00:00", @result);
  select @result;
  
  -- 25.	Tạo Trigger có tên tr_xoa_hop_dong khi xóa bản ghi trong bảng hop_dong
  -- thì hiển thị tổng số lượng bản ghi còn lại có trong bảng hop_dong ra giao diện console của database.
-- Lưu ý: Đối với MySQL thì sử dụng SIGNAL hoặc ghi log thay cho việc ghi ở console.
 use furamaresort;
delimiter //
create trigger tr_xoa_hop_dong after delete on hopdong for each row
begin
    declare h int;
	select count(ma_hop_dong) into h from hopdong ;
    select h;
end//
delimiter ;
SET FOREIGN_KEY_CHECKS=0;
delete from hopdong where ma_hop_dong = 12;
SET FOREIGN_KEY_CHECKS=1;



  
  







 
 
 

 

 
 
 
 
 
 
 
























