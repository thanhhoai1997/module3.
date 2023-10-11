-- 17.	Cập nhật thông tin những khách hàng có : 
 -- ten_loai_khach từ Platinum lên Diamond, chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền 
 -- thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
 create view get_makhachhang as
 select k.ma_khach_hang , (ifnull(sum(hdct.so_luong*dvdk.gia),0) + ifnull(d.chi_phi_thue,0))  tongtien  from khachhang as k
 left join hopdong as h
 on k.ma_khach_hang = h.ma_khach_hang 
 left join dichvu as d
 on d.ma_dich_vu = h.ma_dich_vu
 left join hopdongchitiet as hdct 
 on hdct.ma_hop_dong = h.ma_hop_dong
 left join dichvudikem as dvdk
 on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
 left join loaikhach as l
 on l.ma_loai_khach = k.ma_loai_khach where year(h.ngay_lam_hop_dong) = 2021 and l.ten_loai_khach = "Platinium"
 group by h.ma_hop_dong, k.ma_khach_hang having tongtien > 10000000;
 
 
 update khachhang set ma_loai_khach = 1 where ma_khach_hang in 
  (select ma_khach_hang from get_makhachhang)
 ;
 