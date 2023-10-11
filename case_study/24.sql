-- 24.	Tạo Stored Procedure sp_them_moi_hop_dong dùng để thêm mới vào bảng hop_dong với 
  -- yêu cầu sp_them_moi_hop_dong phải thực hiện kiểm tra tính hợp lệ của dữ liệu bổ sung,
   -- với nguyên tắc không được trùng khóa chính và đảm bảo toàn vẹn tham chiếu đến các bảng liên quan
   
   delimiter //
   create procedure sp_them_moi_hop_dong (ma int , ngay_lam_hd datetime,tiendatcoc double,manhanvien int, makhachhang int, madichvu int,  ngayketthuc datetime, out result varchar(100) )
   
   begin
  declare true_ma_hop_dong int ;
  select max(ma_hop_dong) into true_ma_hop_dong from hopdong;
  if (ma <> true_ma_hop_dong + 1) then set result = "nhap sai ma hop dong";
  elseif(manhanvien not in (select ma_nhan_vien from nhanvien)) then set result  = "k tim thay ma nhan vien";
  elseif(makhachhang not in (select ma_khach_hang from khachhang)) then set result = "k tim thay ma khach hang";
  elseif(madichvu not in (select ma_dich_vu from dichvu)) then set result = "k tim thay ma dich vu";
  else insert into hopdong  values (ma,ngay_lam_hd,tiendatcoc,manhanvien,makhachhang,madichvu,ngayketthuc);
  end if;
   end//
  
  delimiter ;
  
  call sp_them_moi_hop_dong (13,"2020-12-08 00:00:00" ,90000, 1,21,1, "2020-12-08 00:00:00", @result);
  select @result;