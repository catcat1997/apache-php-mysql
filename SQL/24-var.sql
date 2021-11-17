--查看系統變量
select @@autocommit;

--會話修改系統變量 
局部修改:(會話級別 = 只在當前客戶端有效)
set autocommit = 0;

全局修改:
set global autocommit = 0;
set @@global.autocommit = 0;
全局修改: 所有連接的客戶端沒有變改?
因為全局修改只針對新客戶端生效。(正在連接的無效)

全局修改 set names big5;
show variables like 'character_set%';
set names big5;
SET global character_set_client = big5;
SET global character_set_results = big5;
SET global character_set_connection = big5;

定義會話變量(用戶變量):  只對當前用戶使用的客戶端生效
變量賦值符號 := 
set @var1 = 'hello mysql';
set @var1 := 'hello mysql';

我們全部的變量賦值都應該用 :=
--通過查詢數據為變量賦值
1.	賦值且查看賦值過程:
select @name := stu_name , @age := stu_age from my_student limit 1;
2.	只賦值, 不看過程: 
select stu_name , stu_age from my_student order by stu_height desc limit 1 into @name,@age;

--查看自定義變量
select @變量名;
select @name , @age;

