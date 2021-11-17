--創建表
use mydatabase2;

--NOT NULL 與 default值;
create table my_default (name varchar(10) NOT NULL , age int default 18) charset = utf8;
insert into my_default (name) values ('peter');
insert into my_default values ('jack',default);

--創建表 增加字段描述 comment
use mydatabase2;
create table my_comment (
    name varchar(10) not null comment '當前是用戶名,不能為空值',
    pass varchar(50) not null comment '密碼不能為空'
) charset = big5;

查看comment: 必須通過查看 表創建語句
show create table my_comment;
