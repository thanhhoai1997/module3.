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