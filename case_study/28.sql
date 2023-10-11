-- 28.	Tạo Stored Procedure sp_xoa_dich_vu_va_hd_room để tìm các dịch vụ được thuê bởi khách hàng
    -- với loại dịch vụ là “Room” từ đầu năm 2019 đến hết năm 2020 để xóa thông tin của các dịch vụ đó 
    -- (tức là xóa các bảng ghi trong bảng dich_vu) 
    -- và xóa những hop_dong sử dụng dịch vụ liên quan (tức là phải xóa những bản gi trong bảng hop_dong) 
    -- và những bản liên quan khác.
   
    delimiter //
    create procedure sp_xoa_dich_vu_va_hd_room ()
    begin
  
    delete from hopdongchitiet where ma_hop_dong in (select ma_hop_dong from v_dvu_hdong);
   
    
    delete from hopdong where ma_hop_dong in (select ma_hop_dong from v_dvu_hdong);
     
     
    delete from dichvu where ma_dich_vu in (select distinct ma_dich_vu from v_dvu_hdong );
    
    end //
    delimiter ;
    
         select ma_hop_dong from v_dvu_hdong;
     call sp_xoa_dich_vu_va_hd_room();
	
    