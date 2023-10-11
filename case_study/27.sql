-- 27.	Tạo Function thực hiện yêu cầu sau:
 -- a.	Tạo Function func_dem_dich_vu: Đếm các dịch vụ đã được sử dụng với tổng tiền là > 2.000.000 VNĐ.

delimiter //
create function func_dem_dich_vu () returns int
reads sql data
deterministic
begin
	declare count1 int ;
    select count(*) into count1  from get_count_sldv;
    return count1;
end //
delimiter ;
create view get_count_sldv as
select  d.ten_dich_vu  from hopdong as h
    left join dichvu as d
    on  h.ma_dich_vu = d.ma_dich_vu
    left join hopdongchitiet as hdct 
    on h.ma_hop_dong = hdct.ma_hop_dong
    left join dichvudikem as dvdk
    on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem where (ifnull((hdct.so_luong*dvdk.gia),0) + ifnull(d.chi_phi_thue,0)) > 2000000 group by d.ma_dich_vu  ;
    
    select func_dem_dich_vu();
    
    -- b.	Tạo Function func_tinh_thoi_gian_hop_dong: 
-- Tính khoảng thời gian dài nhất tính từ lúc bắt đầu làm hợp đồng --
 -- đến lúc kết thúc hợp đồng mà khách hàng đã thực hiện thuê dịch vụ 
 -- Mã của khách hàng được truyền vào như là 1 tham số của function này.
		delimiter //
    create function func_tinh_thoi_gian_hop_dong( makhachhang int ) returns int
    reads sql data
    deterministic
    begin
    declare maxdate int;
    select max(m.c) into maxdate from (select datediff(h.ngay_ket_thuc, h.ngay_lam_hop_dong) as c from hopdong as h 
    left join dichvu as d
    on h.ma_dich_vu = d.ma_dich_vu 
    left join khachhang as k
    on k.ma_khach_hang = h.ma_khach_hang where k.ma_khach_hang = makhachhang
) as m;
return maxdate;
    
    end //
    delimiter ;
    
    select func_tinh_thoi_gian_hop_dong(5);
    
    