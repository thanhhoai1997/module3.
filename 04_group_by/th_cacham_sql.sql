use quanlysinhvien;
select*from student;

select count(student_id) , student.address from student group by address;

select*from mark;

select avg(mark),s.student_name,s.student_id from student as s
inner join mark as m
on s.student_id = m.student_id
group by  s.student_id,s.student_name;

select avg(mark) , s.student_name,s.student_id from student as s
inner join mark as  m
on s.student_id = m.student_id
group by m.student_id having avg(mark) > 15;

select avg(mark) , s.student_id,s.student_name from student as s
inner join mark as m
on m.student_id = s.student_id
group by m.student_id having avg(mark) >= all(select avg(mark) from mark group by mark.student_id) ;



