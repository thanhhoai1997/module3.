-- 9.	Thực hiện thống kê doanh thu theo tháng,
-- nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng

select month(hopdong.ngay_lam_hop_dong) as thang , count(ma_hop_dong) as so_luong_khach from hopdong where year(hopdong.ngay_lam_hop_dong) = 2021 group by thang;