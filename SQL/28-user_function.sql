語法:
修改語句結束符
create function 函數名 (參數) returns 類型
begin
//函數體
return 返回值數據;
end
語句結束符
修改語句結束符(改回來)

--創建自定義函數
-- delimiter $$   --把語句結束符 改為 $$
-- create function my_func1() returns int
-- begin
--     return 10;
-- end
-- $$
-- delimiter ; --改回來
set global log_bin_trust_function_creators = true; -- 解鎖delimiter 可使用
delimiter $$
create function my_func1() returns int
begin
    return 10;
end
$$
delimiter ;


--最簡函數
如果只有一條, 就不需要begin和end
create function my_func2() returns int
return 20;

--函數形參
create function my_func3(int_1 int , int_2 int) returns int
return int_1 + int_2;

--查看函數
show function status [like ‘pattern’];
show function status;
show function status like 'my_func%';
show function status\G
show function status like 'my_func%'\G
\G 的作用是將查到的結構旋轉90度變成縱向：

--查看函數創建語句
show create function my_func1;

--調用函數
select 函數(參數);
select my_func1();
select my_func3(10,20);

--刪除函數
drop function 函數名;
drop function my_func2;
