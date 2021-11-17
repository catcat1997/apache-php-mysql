use mydatabase2;
--創建my_string table
enum語法:
create table my_enum (gender enum('男','女','保密')) charset = utf8;
--插入數據
insert into my_enum values ('男');
insert into my_enum values ('女');
insert into my_enum values ('保密');

--將字段按照數值輸出
select gender + 0 from my_enum;

--enum插入方法2
insert into my_enum values (3);

--set集合
--創建my_set table
create table my_set (hobby set('reading','workout','table tenis','watch ball')) charset = utf8;

create table my_set2 (interest set('書','健身','乒乓球','看球')) charset = utf8;
create table my_set2 (interest set('看書','健身','乒乓球','看球')) charset = big5;
ERROR 3507 (HY000): Failed to update columns dictionary object.
set中文選項會報錯. 用big5就不報錯, 可能因為我們的cmd是big5。

插入數據
insert into my_set values('reading,table tenis');
注意: , 號中間不可以有空格。
insert into my_set values('workout,table tenis,reading');
insert into my_set2 values('看書,乒乓球,看球,健身');
insert into my_set2 values('看球,健身');

以數值方式查看集合數據
select hobby + 0 from my_set;

以數值方式插入數據
insert into my_set values(255);
