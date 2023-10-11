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
