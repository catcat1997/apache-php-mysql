use database2;

create table ysf1(int_1 int, int_2 int, int_3 int, int_4 int) charset = big5;

insert into ysf1 values (100,-100,0,default);

--算術運算
select int_1 + int_2 , int_1 - int_2 , int_1 * int_2 , int_1 / int_2, int_2 / int_3, int_2 % 6 , int_4 / 5 from ysf1;

--比較運算符 (常用在條件中進行限定結果)
select * from my_student;
select * from my_student where stu_id <> '0005';
select * from my_student where stu_id <=> '0005';
select * from my_student where stu_id = '0005';
select * from my_student where stu_age >=25 ;

特殊應用: 在字段結果中進行比較運算
select '1' <=> 1 , 0.02 <=> 0 , 0.02 <> 0;
mysql中, 沒有規定select必須有數據表

--計算區間 between A and B;
between 條件1 and 條件2;
--如果是全數字的字符串 放到between中判斷也可以。 系統會自動轉換。
select * from my_student where stu_id between '0001' and '0005';
select * from my_student where stu_age between 20 and 30;

-- 邏輯與解決
select * from my_student where stu_age >=20 and stu_age <=30;

--查找身高高於170 或者 年齡大於25的學生
select * from my_student where stu_height >= 170 or stu_age >=25;

--知道學生信息  in運算符
select * from my_student where stu_id in ('0001','0003','0005');
用於結果數量比較多時。

--is 運算符    專門用來判斷值是不是空NULL的。
--is null / is not null
select * from my_int;
--查詢不為空的數據
select * from my_int where int_1 is not null;
select * from my_int where int_2 is null;
判斷值是否NULL不能用等號 = null , <> null。 不能用!!! 要用is null , is not null。

--like運算符  (用來進行模糊匹配)
select * from my_student;
select * from my_student where stu_name like '小%';
select * from my_student where stu_name like '%人';
select * from my_student where stu_name like '小_';
