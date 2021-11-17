use mydatabase2;
select * from my_student;
select * from my_class;
--創建視圖
create view student_class_ibfk_v as 
select s.* , c.name from my_student as s left join my_class as c on s.class_id = c.class_id;
-- 不能用select * from 因為重名

--查看視圖結構
show tables ;
show create table student_class_ibfk_v; 
desc student_class_ibfk_v;

--使用視圖
select * from student_class_ibfk_v;

--修改視圖
alter view student_class_ibfk_v as 
select * from my_student as s left join my_class as c using(class_id);

create view student_class_ibfk_v2 as 
select * from my_student as s left join my_class as c using(class_id);

--刪除視圖
drop view student_class_ibfk_v2;

--自動事務
show variables like 'autocommit%';
set autocommit = Off;

commit;  --提交事務
rollback; --清空事務


