-- 26.	Tạo Trigger có tên tr_cap_nhat_hop_dong khi cập nhật ngày kết thúc hợp đồng, cần kiểm tra xem thời gian cập nhật có phù hợp hay không, với quy tắc sau:
--  Ngày kết thúc hợp đồng phải lớn hơn ngày làm hợp đồng ít nhất là 2 ngày.
-- Nếu dữ liệu hợp lệ thì cho phép cập nhật, nếu dữ liệu không hợp lệ thì in ra thông báo
-- “Ngày kết thúc hợp đồng phải lớn hơn ngày làm hợp đồng ít nhất là 2 ngày” 
-- trên console của database.
-- Lưu ý: Đối với MySQL thì sử dụng SIGNAL hoặc ghi log thay cho việc ghi ở console.
delimiter //
create trigger tr_cap_nhat_hop_dong before update on hopdong  for each row
begin
 if(datediff(new.ngay_ket_thuc,old.ngay_lam_hop_dong)  < 2 ) then 
 signal sqlstate '45000' set message_text = "Ngày kết thúc hợp đồng phải lớn hơn ngày làm hợp đồng ít nhất là 2 ngày";
end if;
end//
delimiter ;

set sql_safe_updates = 0;
update hopdong  set ngay_ket_thuc = "2020-12-08 00:00:00" where ma_hop_dong = 1;
set sql_safe_updates = 0;
