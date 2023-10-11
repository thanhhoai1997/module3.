-- 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).

select dvdk.ma_dich_vu_di_kem , dvdk.ten_dich_vu_di_kem, sum(hdct.so_luong) as so_luong_dich_vu_di_kem  from dichvudikem as dvdk
right join hopdongchitiet as hdct
on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
 group by dvdk.ma_dich_vu_di_kem  having  so_luong_dich_vu_di_kem >= all (select sum(hdct.so_luong)  as s 
 from dichvudikem as dvdk
right join hopdongchitiet as hdct
on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem  group by dvdk.ma_dich_vu_di_kem )   ;