-- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống,
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.

select k.ma_khach_hang, k.ho_ten, k.email, k.so_dien_thoai, k.ngay_sinh, k.dia_chi from khachhang as k
union all
select n.ma_nhan_vien, n.ho_ten, n.email, n.so_dien_thoai, n.ngay_sinh, n.dia_chi from nhanvien as n;