use quanlysinhvien;
select*from student where student_name like 'h%';
select*from class where start_date like '_____12___';
select*from sub_ject where credit between 3 and 5;
set sql_safe_updates = 0;
update student set class_id = 2 where student_name = "Hung";
set sql_safe_updates = 1;
insert into mark values(4,3,3,10,7);
select*from student;
select s.student_name,su.sub_name,m.mark from sub_ject  as su
inner join mark as m on su.sub_id = m.sub_id
inner join student as s on s.student_id = m.student_id
order by m.mark desc , s.student_name asc;


