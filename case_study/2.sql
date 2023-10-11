-- 2.Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu
-- là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
use furamaresort;
select * from nhanvien where char_length(ho_ten) <= 15 and (ho_ten like 'H%' or ho_ten like'T%' or ho_ten like 'K%');