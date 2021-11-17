標量子查詢
--知道一個學生名, 小美, 想知道他在哪個班級
--1.通過學生表 獲取他的class_id
--2.通過class_id獲取班級名字
select * from my_class where class_id = (select class_id from my_student where stu_name = '小美');

列子查詢
--想獲取已經(有學生存在的班)的所有班級名字
-- 1.找出學生表中所有班級id
-- 2.找出班級表中對應的名字
select name from my_class where class_id in (select class_id from my_student);

行子查詢
--獲取班級上age最大 而且 身高最高的學生
--1.得出age最大值
--2.得出height最大值
--3.得出對應學生
select * from my_student having stu_age = max(stu_age) and stu_height = max(stu_height); --不行
-- 聚合函數不能在where內使用, 要用having , 但having是用於group by的。

--age最大 而且 身高最高的學生
select * from my_student where (stu_age, stu_height) = (select max(stu_age),max(stu_height) from my_student);
select * from my_student where stu_age = (select max(stu_age) from my_student);
select * from my_student where stu_height = (select max(stu_height) from my_student);

表子查詢
--語法:
select 字段名列表 from (表子查詢) as 別名 [where] [group by] [having] [order by] [limit];
--獲取每個班上最高身高的一個學生

-- ***如果ORDER BY列有多行具有相同的值，服務器可以自由地以任何順序返回這些行，
-- ***並且根據總體執行計劃可能以不同的方式返回。換句話說，這些行的排序順序對於無序列是不確定的。
-- ***影響執行計劃的一個因素是LIMIT，因此對於一個ORDER BY查詢而言，帶與不帶LIMIT返回的行的順序可能是不一樣的。
先order by排序 最高的在第一個(desc) 再group by 取出

select * from my_student order by stu_height desc;  -- 表子查詢

order by排序如果出錯 加limit 常常可解決問題。
select * from (select * from my_student order by stu_height desc limit 100) as temp group by class_id;

exists 語句
--求出 有學生在的所有班級
select * from my_class as c where exists (select stu_id from my_student as s where s.class_id = c.class_id);

-- in , any , some , all
select * from my_student where class_id in (select class_id from my_class);
select * from my_student where class_id = any (select class_id from my_class);
select * from my_student where class_id <> any (select class_id from my_class);

select * from my_student where class_id = all (select class_id from my_class);
select * from my_student where class_id <> all (select class_id from my_class);

select * from my_class where class_id = all (select class_id from my_student);
select * from my_class where class_id <> all (select class_id from my_student);
-- A B C班 不等於all A B 班, 所以返回C班(C是既不等於A,也不等於B)。
