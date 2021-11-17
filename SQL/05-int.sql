-- 創建數據表
use mydatabase2;
create table my_int(
    int_1 tinyint,
    int_2 smallint,
    int_3 mediumint,
    int_4 int,
    int_5 bigint) charset = utf8;
--
無符號標識設定
--unsgined
無符號: 表示存儲的數據在當前字段中, 沒有負數(只有正數,tinyint就能0-255)
--語法:
在類型之後加上 unsgined

unsgined 無負數
alter table my_int add int_6 tinyint unsigned first;
insert into my_int (int_6) value (255);

zerofill 長度顯示
alter table my_int add int_7 tinyint zerofill first;
insert into my_int (int_7) value (1);

指定zerofill長度:
alter table my_int add int_8 tinyint(2) zerofill first;
insert into my_int (int_8) value (2);
