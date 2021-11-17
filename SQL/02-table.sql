--數據表操作

--創建數據表
--普通創建表
create table 表名(字段名 字段類型 [字段屬性] , 字段名 字段類型 [字段屬性]…)[表選項];

--將數據表創建到指定數據庫下
create table 數據庫名 . 表名(字段名 字段類型 [字段屬性] , 字段名 字段類型 [字段屬性]…)[表選項];
--用 . 連接
create table 表名(字段名 字段類型 [字段屬性] , 字段名 字段類型 [字段屬性]…)[表選項];
create table 數據庫名 . 表名(字段名 字段類型 [字段屬性] , 字段名 字段類型 [字段屬性]…)[表選項];
create table mydatabase.class(name varchar(10));

create table teacher(name varchar(10));

-- 表選項: 
-- Engine: 存儲引擎, mysql提供的具體存儲數據的方式, 默認有一個innodb (5.5以前默認是myisam)
-- charset: 字符集 (只對當前自己表有效 (級別比數據庫高))
-- collate: 校對集

--使用表選項:
create table student(name varchar(10)) charset utf8;

--複製已有的表結構
create table 新表名 like 表名;

--查看當前數據庫下的所有表
show tables;

--複製已有的表結構
--只會複製結構, 如果表中的數據不會複製。
--語法:
--create table 新表名 like 表名;
--只要使用 數據庫.表名, 就可以在任何數據庫下訪問其他數據庫的表名 (mydatabase.teacher)

--在test數據庫下創建一個與 mydatabse庫內的 表:teacher一樣的表
ues test;
create table teacher like mydatabase.teacher;

--查看匹配數據表
show tables like ‘匹配模式’;

--查看/顯示表結構
describe class;
desc teacher;
show columns from student;

-- Field 是字段名 name
-- Type是字段類型 varchar(10)
-- Null是 值是否允許為空。
-- Key 是索引
-- default是 值的默認值, NULL就是: 如果不給值,值就是空(Null)
-- Extra 是額外的屬性。

--顯示/查看表創建語句
show create table 表名;
show create table student;

--修改表屬性(表選項)
alter table 表名 表選項 [=] 值;
alter table student charset = gbk;

--修改表結構
修改表名:
rename table 舊表名 to 新表名;
--數據表名字通常有前綴, 取數據庫名的前兩個字母加上下划線
--我們在mydatabase庫中 所以新命名是
rename table student to my_student;

修改表選項:
alter table 表名 表選項 [=] 新值;
alter table student charset = gbk;

新增字段:
alter table 表名 add [column] 新字段名 列類型 [列屬性] [位置 first/after字段名];
--給student增加 age字段
alter table my_student add column age int;
特點: 新增字段默認加到表的最後面。
字段位置: 
first: 在某某之前(最前面), 第一個字段
after 字段名: 放在某個字段名後面。(默認的) 
--增加字段: 放到第一個字段位
alter table my_student add id int first;
int是列類型, first是位置(取前面)。

修改字段名:
alter table 表名 change 舊字段名 新字段名 字段類型 [列屬性] [新位置];
-- age改名到ages 列類型還是int;
alter table my_student change age ages int;

修改字段類型(屬性):
alter table 表名 modify 字段名 新類型 [新屬性] [新位置];
--把字段名name的 類型改做最多15個字符串 放到id後面
alter table my_student modify name varchar(15) after id;

刪除字段:
alter table 表名 drop 字段名
alter table my_student drop ages;

刪除表結構:
drop table 表名 [,表名2]; 可以同時刪多個數據表(數據庫不可以)。 
drop table class,teacher;

status; 查看當前所在數據庫與多種status。
select database(); 查看當前所在數據庫。
show tables;查看當前所在數據庫與所有數據。
