--創建my_auto表
use database2;
create table my_auto(
    id int primary key auto_increment,
    name varchar(10) not null comment '用戶名',
    pass varchar(10) not null comment '密碼'
)charset = big5;

插入數據,觸發自動增長。
insert into my_auto values(null,'tom','123456');

查看自動增長
show create table my_auto; 
--會有一個auto_increment的值,說明,一張表只能有一個字段是auto_increment。

修改自動增長的值
alter table 表名 auto_increment = 值;
alter table my_auto auto_increment = 10;

刪除自動增長
alter table my_auto modify id int; (不要再增加primary key,因為已經有了)
alter table my_auto modify id int;

查看自增長初始值
show variables like 'auto_increment%';

auto_increment的值不能向下修改
auto_increment插入值時,可以是未用而且小於當前auto_increment的值。
但插入了未用而且小於當前的值之後,auto_increment不會改變。
