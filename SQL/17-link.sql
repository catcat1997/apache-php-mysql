交叉連接 cross join
select * from my_auto;
select * from my_student;
select * from my_auto cross join my_student;

內連接 inner join
select * from my_student;

create table my_class (
id int primary key auto_increment,
name varchar(10) not null unique
) charset = big5;
insert into my_class values (null,'A班');
insert into my_class values (null,'B班');
insert into my_class values (null,'C班');
-- inner join沒有條件 會自動變成cross join
select * from my_student inner join my_class;
-- inner join
select * from my_student inner join my_class on my_student.class_id = my_class.id;
--用as alias別名 簡化代碼
select * from my_student as a inner join my_class as b on a.class_id = b.id;
select * from my_student as a inner join my_class as b where a.class_id = b.id;

外連接 outer join 
--left join
select * from my_student left join my_class on my_student.class_id = my_class.id;
--right join
select * from my_student right join my_class on my_student.class_id = my_class.id;

-- my_class放左面做主表
select * from my_class left join my_student on my_class.id = my_student.class_id;
outer join 主表會保留所有數據顯示(即使匹配不成功)。

自然連接 natural join   不需要指定連接條件。MySql會使用表內的，相同的字段，作為連接條件
--先把my_class的 id 改為class_id;
alter table my_class change id class_id int auto_increment;
內連接 natural join
select * from my_class natural join my_student;
外連接　natural join
select * from my_class natural left join my_student;
select * from my_class natural right join my_student;


using 關鍵字  (合并同字段名的結果顯示)
表1  [inner,left,right] join 表2 using (同名字段名列表);  --連接字段 
select * from my_student left join my_class using(class_id);
