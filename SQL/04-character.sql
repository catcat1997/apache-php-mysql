--插入中文數據
use mydatabase2;
insert into my_teacher values ('小明',21);

--mysql.exe告知mysqld.exe對應的字符集類型。
--可以通過:
set names 字符集;
set names big5;
深層原理: 客戶端,服務端, 連接層(show variables like 'character_set%';)
-- 查看mysql與mysqld系統的字符集
show variables like 'character_set%';

修改服務器端變量的值:
set 變量名 = 值;
set character_set_client = utf8;
set character_set_results = utf8;

