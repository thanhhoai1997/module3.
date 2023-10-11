-- Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu”
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng nam 2021
create view v_nhan_vien as
select ho_ten, so_dien_thoai, dia_chi from nhanvien as n 
 join hopdong as h
on n.ma_nhan_vien = h.ma_nhan_vien where n.dia_chi  like '%Đà Nẵng' ;
