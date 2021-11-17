use database2;
高級數據操作

多數據插入
--創建my_insert表
create table my_insert(
    id int primary key auto_increment,
    username varchar(10) not null unique,
    password varchar(10) not null
)charset = big5;
--insert into 表名 [字段名列表] values (值列表),(值列表)…;
insert into my_insert values (null,'peter1997','123456') , (null,'mary00585','123456') , (null,'jason1314','123456');

主鍵衝突
--創建表
create table my_student(
    stu_id varchar(10) primary key comment '主鍵,學生id',
    stu_name varchar(10) not null comment '學生姓名'
)charset = big5;

insert into my_student values ('0001','張三'),('0002','張四'),('0003','張五');

1.	主鍵衝突更新
類似插入數據語法, 如果插入時主鍵衝突, 那麼采用更新方法
insert into 表名 [字段名列表] values (值列表) on duplicate key update 字段=新值;
insert into my_student values ('0003','小美');
主鍵衝突:ERROR 1062 (23000): Duplicate entry '0003' for key 'my_student.PRIMARY'
--主鍵衝突更新
insert into my_student values ('0003','小美') on duplicate key update stu_name = '小美';
會直接取代主鍵衝突的原數據。


2.	主鍵衝突替換 (內存效率比上一種方法低)
當主鍵衝突之後, 幹掉原數據, 重新插入進去。
--replace into 表名 [字段名列表] values (值列表);
replace into my_student values ('0001','新人');

蠕蟲複制
--先創建my_simple表
create table my_simple(name char(1) not null) charset = big5;
insert into my_simple values('a'),('b'),('c'),('d');
--蠕蟲複制
insert into my_simple select name from my_simple;

更新數據
注意: 更新數據時如果沒有條件, 會是全表更新, 要慎用。
可以用limit 來顯示更新的數量;
update 表名 set 字段名 = 值 where 條件;
update 表名 set 字段名 = 值 [where 條件] limit 數量;

update my_simple set name = 'e' where name = 'a' limit 4;

刪除數據
delete from 表名 [where 條件];
delete from my_auto;
但即使清除整張表的內容 auto_increment 也不會重置。
truncate 表名;
truncate my_auto;
auto_increment就會重置。
