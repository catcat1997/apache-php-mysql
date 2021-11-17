--數據基本操作:

--我們用mydatabase2
use mydatabase2;
create table my_teacher(name varchar(10),age int)charset utf8;

插入操作:
--將數據以SQL的形式存儲到指定的數據表(字段)里面。
兩種語法:
insert into 表名 (字段名列表) values(對應字段列表);
insert into 表名 values(對應表結構);

insert into my_teacher (name,age) values('Jack',30);
insert into my_teacher (name) values ('peter');

insert into my_teacher values ('lilia',30);

查詢操作:
獲取所有數據:
select * from 表名;
select * from my_teacher;

查詢表中部分字段:  
select 字段列表 from 表名;  字段列表用 , 號隔開
select name from my_teacher;
select name,age from my_teacher;

簡單條件查詢數據:
select 字段列表 / * from 表名 where 字段名 = 值;
--MySQL中 沒有 == 符號
--獲取年齡為30的人名
select * from my_teacher where age = 30;
select name from my_teacher where age = 30;

刪除數據操作:
delete from 表名 [where 條件]; --如果沒有where條件, 系統會自動刪除該表中所有數據(***慎用)
delete from my_teacher where age >= 40;

更新(修改)數據操作:(通常是修改部分字段數據)
update 表名 set 字段名 = 新值 [where 條件];--如果沒有where條件,所有表中的對應字段名都會被改成統一值。
update my_teacher set age  = 88 where name = 'peter';
