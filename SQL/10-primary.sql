use mydatabase2;
-- 創建my_pri1表 primary key
隨表創建  在字段後增加主鍵屬性
create table my_pri1 (username varchar(10) primary key )charset = big5;

create table my_pri2(username varchar(10) , primary key(username)) charset = big5;

表後創建(表而創建後 增加primary key 屬性)
--alter table 表名 add primary key(字段名);
create table my_pri3 (username varchar(10)) charset = big5;
alter table my_pri3 add primary key(username);

查看主鍵:
--主鍵不允許為空: 如果給了primary key, Null屬性就會自動not null;
desc 表名;
show create table 表名;

刪除主鍵
--alter table 表名 drop primary key;
alter table my_pri3 drop primary key;
但null 不會自動改回yes;
alter table my_pri3 modify username varchar(10) NULL;

複合主鍵:
create table my_score(
    student_no char(10),
    course_no char(10),
    score tinyint not null,
    primary key(student_no , course_no)) charset big5;

insert into my_score values ('0001','course001',100);
insert into my_score values ('0001','course002',90);
insert into my_score values ('0002','course001',65);

複合唯一鍵unique key是 || 邏輯或 不能重複。
複合主鍵primary key 是 && 邏輯與 不能重複。
