--float 單精度類型:
float:表示不指定小數位的浮點數
float(M,D): 表示一共存儲M個有效數字, 其中小數部分占D位。
例:
float(10,2): 整數部分8位,小數部分2位。

use mydatabase2;
--創建float表
create table my_float (f1 float , f2 float(10,2)) charset = utf8;
insert into my_float values (123.123,12345678.90);
--整數部分不能超出範圍,但小數部分可以。
insert into my_float values (123.123,12345678.999990);
--浮點數可以用數學計數法存儲數據
insert into my_float values (123.123,10e5);

--定點數decimal:
decimal(M,D): M表示總長度,最大值不能超過65.  D表示小數部分,最大不能超過30。

--創建decimal表
create table my_decimal(f1 float(10,2),d1 decimal(10,2)) charset = utf8;

insert into my_decimal values (12345678.90,12345678.90);
插入最大數
insert into my_decimal values (99999999.99,99999999.99);
插入最大數(報錯)
insert into my_decimal values (99999999.99,99999999.999);
