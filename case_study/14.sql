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
 