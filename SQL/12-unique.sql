--unique key 唯一鍵
創建unique key表
use database2;
--語法:
--1.直接在表字段後增加 unique key
create table my_unique1(
    id int primary key auto_increment,
    username varchar(10) unique 
) charset = big5;

--2.在所有字段之後加上 unique key(字段名列表)
create table my_unique2(
    id int primary key auto_increment,
    username varchar(10),
    unique key (username) 
) charset = big5;

--3. 創建完表之後也可以加上unique key
--alter table 表名 add unique key(字段名列表)
create table my_unique3(
    id int primary key auto_increment,
    username varchar(10)
) charset = big5;
alter table my_unique3 add unique key (username);

查看唯一鍵
desc 表名;
desc my_unique1;

刪除唯一鍵
一個表中允許存在多個唯一鍵, 所以語法與主鍵不同。
alter table 表名 drop index 唯一鍵字段名;
alter table my_unique3 drop index username;
alter table my_unique3 add unique key(username);

複合唯一鍵
alter table my_unique3 add password varchar(10) unique;
insert into my_unique3 values(null,'hello1997','hihipass');
insert into my_unique3 values(null,'hello1997','hihipass2'); //不能

複合唯一鍵unique key是 || 邏輯或 不能重複。
複合主鍵primary key 是 && 邏輯與 不能重複。
