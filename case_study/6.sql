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
    