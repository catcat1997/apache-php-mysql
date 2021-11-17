-- 獲取男生身高升序,女生身高降序

select * from my_student;
select * from my_student where gender = 1 order by stu_height asc;
select * from my_student where gender = 2 order by stu_height desc;

select * from my_student as table1 where gender = 1 order by stu_height asc;
--- union
select * from my_student as table1 where gender = 1
union all
select * from my_student as table2 where gender = 2 ;

--union理論上只要保證字段數一樣, 不需要每次拿到的數據對應字段類型相同。 但不好看。
select stu_id,stu_name,stu_height from my_student where gender = 1
union all
select stu_name,stu_id,stu_height from my_student where gender = 2 ;

--order by + union
--order by一定要放到union後面。
--如果兩張表在合并前做order by 要加()***而且要加上limit。
(select * from my_student where gender = 1 order by stu_height desc limit 50)
union
(select * from my_student where gender = 2 order by stu_height asc limit 50);
