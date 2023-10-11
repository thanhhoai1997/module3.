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