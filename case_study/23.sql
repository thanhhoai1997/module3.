-- 23.Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó với ma_khach_hang
 -- được truyền vào như là 1 tham số của sp_xoa_khach_hang.
  
delimiter //
  create procedure sp_xoa_khach_hang (in makhachhang int)
  begin
  SET FOREIGN_KEY_CHECKS=0;
	delete from khachhang where ma_khach_hang = makhachhang;
  SET FOREIGN_KEY_CHECKS=1;
  end//
  delimiter ;
  
  call sp_xoa_khach_hang(10);
  
  