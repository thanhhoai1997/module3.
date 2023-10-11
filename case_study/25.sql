-- 25.	Tạo Trigger có tên tr_xoa_hop_dong khi xóa bản ghi trong bảng hop_dong
  -- thì hiển thị tổng số lượng bản ghi còn lại có trong bảng hop_dong ra giao diện console của database.
-- Lưu ý: Đối với MySQL thì sử dụng SIGNAL hoặc ghi log thay cho việc ghi ở console.
 use furamaresort;
delimiter //
create trigger tr_xoa_hop_dong after delete on hopdong for each row
begin
     select count(ma_hop_dong) into @h   from hopdong ;
	
   SIGNAL SQLSTATE '01000' SET MESSAGE_TEXT = @h;
end//
delimiter ;




SET FOREIGN_KEY_CHECKS=0;
delete from hopdong where ma_hop_dong = 12;
SET FOREIGN_KEY_CHECKS=1;