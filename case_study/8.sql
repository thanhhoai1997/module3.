-- 8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
-- Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên.

-- 1
select khachhang.ho_ten from khachhang 
union 
select khachhang.ho_ten from khachhang ;
-- 2
select khachhang.ho_ten from khachhang group by khachhang.ho_ten;

-- 3

select distinct(ho_ten)  from  khachhang ;