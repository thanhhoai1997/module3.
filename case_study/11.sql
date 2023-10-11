-- 11.	Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng 
 -- có ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
 
 select dvdk.ma_dich_vu_di_kem,dvdk.ten_dich_vu_di_kem,dvdk.gia,dvdk.don_vi,dvdk.trang_thai from khachhang as k
 left join loaikhach as l
 on k.ma_loai_khach = l.ma_loai_khach
 left join hopdong as h
 on h.ma_khach_hang = k.ma_khach_hang
 left join hopdongchitiet as hdct
 on hdct.ma_hop_dong = h.ma_hop_dong
  join dichvudikem as dvdk
 on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem where l.ten_loai_khach  = "Diamond" and (k.dia_chi like '%Vinh' or k.dia_chi like '%Quảng Ngãi') ;
 ;
 