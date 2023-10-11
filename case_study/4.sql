-- 4.Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần.
-- Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàn.
--  Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
alter table loaikhach change column ten_khach_hang ten_loai_khach varchar(45);

select k.ho_ten , count(ma_hop_dong) from khachhang  as k
inner join loaikhach as l
on k.ma_loai_khach = l.ma_loai_khach
inner join hopdong as h
on k.ma_khach_hang = h.ma_khach_hang 
where l.ten_loai_khach = "Diamond"
group by (h.ma_khach_hang) order by count(ma_hop_dong);
