-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 1 lần trong năm 2020 lên gấp đôi.
 update dichvudikem set gia = gia*2 where ma_dich_vu_di_kem in (select ma_dich_vu_di_kem from dvdk);
 select * from dichvudikem;
create view dvdk as
select dvdk.ma_dich_vu_di_kem, dvdk.gia , count(dvdk.ma_dich_vu_di_kem) as c from hopdong as h
left join hopdongchitiet as hdct
on h.ma_hop_dong = hdct.ma_hop_dong
left join dichvu as d
on d.ma_dich_vu = h.ma_dich_vu
left join dichvudikem as dvdk
on hdct.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem where year(h.ngay_lam_hop_dong) = 2021 group by dvdk.ma_dich_vu_di_kem having c > 1  ;