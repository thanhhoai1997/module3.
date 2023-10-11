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