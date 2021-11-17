--創建時間日期類型表
use mydatabase2;
create table my_datetime (
    d1 date ,
    d2 time ,
    d3 datetime ,
    d4 timestamp ,
    d5 year
    ) charset = utf8;

--插入數據
insert into my_datetime values ('1900-01-01','12:12:12','2012-03-18 20:51:31','1999-01-01 12:12:12',69);
insert into my_datetime values ('1900-01-01','12:12:12','2012-03-18 20:51:31','1999-01-01 12:12:12',1984);
-- year可以用4位數插入,2位數插入也可以。
-- 
-- year如果插入2位數時,
-- 69或以下是2000年+69以下的數。
-- 70或以上是1900件+70或以上的數。
insert into my_datetime values ('1900-01-01','12:12:12','2012-03-18 20:51:31','1999-01-01 12:12:12',70);

--timestamp當對應的數據被修改的時候, 會自動更新(這個被修改的數據不是自己);
update my_datetime set d1 = '2000-01-01' where d5 = 2069;
--mysql8.0 timestamp不會自動改了。

time類型特殊性: 本質是用來表示時間區間, 能表示範圍較大。
insert into my_datetime values  ('1900-01-01','512:12:12','2012-03-18 20:51:31','1999-01-01 12:12:12',2015);

在進行時間類型錄入時(time) , 還可以使用一個簡單日期代替時間, 在時間格式之前加一個空格, 之後指定數字: 系統會自動將數字轉換成天數 * 24小時, 再加上後面的時間。
insert into my_datetime values  ('1900-01-01','3 12:12:12','2012-03-18 20:51:31','1999-01-01 12:12:12',2000);

php中有強大的時間日期轉換函數, date將時間戳轉換成想要的格式: strtotime又可以將行多格式轉換成對應的時間戳。
php通常不需要數據庫來幫助處理這麼複雜的時間日期。 
所以通常配合php的時候, 時間的保存通常使用真正的時間戳。從而用整型來保存。
