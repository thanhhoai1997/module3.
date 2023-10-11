-- 10.	Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm.
-- Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem 
 -- (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).
 select h.ma_hop_dong , h.ngay_lam_hop_dong, h.ngay_ket_thuc,h.tien_dat_coc, sum(hdct.so_luong) from hopdong as h
 left join hopdongchitiet as hdct
 on h.ma_hop_dong = hdct.ma_hop_dong
 left join dichvudikem as dvdk
 on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem group by h.ma_hop_dong , h.ngay_lam_hop_dong, h.ngay_ket_thuc,h.tien_dat_coc;