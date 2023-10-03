select*from sub_ject;
-----------------------------------
select *, max(credit) from  sub_ject as sj group by sj.sub_id 
having max(credit) >= all(select max(credit) from sub_ject) ;
---------------------------------
select *, max(mark) from mark  as m
inner join sub_ject as s
on m.sub_id = s.sub_id
group by mark_id having max(mark) >= all (select max(mark) from mark);
; 
---------------------------
select s.student_id,s.student_name,s.address,s.phone,s.status, avg(mark) from student as s
inner join mark as m
on s.student_id = m.student_id
group by m.student_id
order by avg(mark) desc ;



