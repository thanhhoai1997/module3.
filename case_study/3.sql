-- 3.Hiển thị thông tin của tất cả khách hàng có độ tuổi
-- từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select*from khachhang;
select*from khachhang where year(current_date()) - year(ngay_sinh) between 18 and 50 and (dia_chi like '%Quảng Trị' or dia_chi like '%Đà Nẵng') ; 