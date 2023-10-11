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
