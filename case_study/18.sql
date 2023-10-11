-- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
 
 SET FOREIGN_KEY_CHECKS=0; 
 delete from khachhang where ma_khach_hang in
 (select t.ma_khach_hang from
 (select k.ma_khach_hang from khachhang  as k
 left join hopdong as h
 on k.ma_khach_hang = h.ma_khach_hang where year(h.ngay_lam_hop_dong) < 2021) t);
SET FOREIGN_KEY_CHECKS=1;
