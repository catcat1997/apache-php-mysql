--創建過程
create procedure my_pro1()
select * from my_student;
*** 過程基本上可以完成所有函數的功能。***

--修改語句結束符   sum 1到100的和
delimiter $$
create procedure my_pro2()
begin
    declare i int default 1;
    set @sum = 0;
    while i <=100 do
    set @sum = @sum + i;
    set i = i + 1;
    end while;
    select @sum;
end
$$
delimiter ;

--查看過程
show procedure status [like ‘pattern’];
show procedure status like 'my_pro%';
show procedure status like 'my_pro%'\G
show create procedure my_pro2;

--調用過程
過程沒有返回值, 不能用select 調用
call 過程名(實參);
call my_pro1();
call my_pro2();

刪除過程
drop procedure 過程名;
drop procedure my_pro1;

--形參使用語法
過程類型 變量名 數據類型
in      int_1   int

--創建3個外部變量
set @n1 = 1;
set @n2 = 2;
set @n3 = 3;

--創建有參過程
delimiter $$
create procedure my_pro3(in int_1 int , out int_2 int , inout int_3 int)
begin
    select int_1 , int_2 , int_3;
    set int_1 = 10;
    set int_2 = 100;
    set int_3 = 1000;

    select int_1 , int_2 , int_3;
    -- 會話變量
    select @n1 , @n2 , @n3;
    set @n1 = 'a';
    set @n2 = 'b';
    set @n3 = 'c';
    select @n1 , @n2 , @n3;
end
$$
delimiter ;

call my_pro3(@n1,@n2,@n3);

select @n1 , @n2 , @n3;
--      a  , 100 , 1000
--  @n2 和 @n3 分別是out 和 inout 過程類型, 所以會複蓋值
