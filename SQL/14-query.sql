
use mydatabase2;
--select選項
all: 默認的, 表示保存所有的記錄
distinct: 去重複, 只保留一條(所有的字段都相同)

select * from my_simple;
select all * from my_simple;
select distinct * from my_simple;

--字段別名
字段名列表-別名:
有時候需要從多張表獲取數據,在獲取數據時,可能存在不同表中有同名的字段。
這時就需要將同名的字段命名成不同名的: 別名alias。
語法:
字段名 [as] 別名;
select distinct name as name1 , name name2 from my_simple;

from 數據源

1.單表數據
from 表名;

2.多表數據
select * from my_int,my_set;
select * from my_int,my_auto;
會把兩張表的數據 相乘, 字段數拼接。

3.動態數據
from 後面跟的數據不是一張實體表, 而是一個表中查詢出來得到的二維結果表(子查詢)。
語法:
--select * from (select 字段名列表 from表) as 別名;
select * from (select int_1, int_2, int_3, int_4 from my_int) as alias_int;

--分組
select * from my_student;
alter table my_student add class_id int;
update my_student set class_id = 1 where stu_id in ('0001','0002');
insert into my_student values ('0004','四周人',null);
update my_student set class_id = 2 where stu_id in ('0003','0004');

-- group by
select * from my_student group by class_id; 
--根據class_id分組

-- 修改表結構 與 更新數據
alter table my_student add stu_age tinyint unsigned;
alter table my_student add stu_height int unsigned;
update my_student set stu_age = 18,stu_height = 170 where stu_id = '0001';
update my_student set stu_age = 21,stu_height = 181 where stu_id = '0002';
update my_student set stu_age = 16,stu_height = 163 where stu_id = '0003';
update my_student set stu_age = 35,stu_height = 178 where stu_id = '0004';

--使用統計函數(聚合函數)
按照班級統計每班人數, 最大age,最小height,平均年齡。
select class_id, count(*),max(stu_age),min(stu_height),avg(stu_age) from my_student group by class_id;
group_concat();的使用  將分組中指定的字段進行合并(字符串拼接)。
select class_id,group_concat(stu_name), count(*),max(stu_age),min(stu_height),avg(stu_age) from my_student group by class_id;


-- 修改表結構 與 更新數據
alter table my_student add gender enum('男','女','保密');
update my_student set gender = 1 where stu_id in ('0001','0003');
update my_student set gender = 2 where stu_id in ('0002','0004');
insert into my_student values('0005','小明',1,25,175,1);
insert into my_student values('0006','小花',2,23,155,2);
多分組  (先按class_id分組,再按gender分組)
select class_id,gender,group_concat(stu_name) from my_student group by class_id , gender;

分組排序 (class_id升序,gender降序)
select class_id,gender,group_concat(stu_name) from my_student group by class_id , gender order by class_id asc , gender desc;
在mysql8.0中, asc 與desc好似只能在order by中使用。

回溯統計
當分組進行多分組之後, 往上統計的過程中, 需要進行層層上報,將這種層層上報統計的過程叫做回溯統計,每一次分組向上統計的過程都會產生一次新的統計數據, 而且當前數據對應的分組字段為NULL。
--group by 字段 with rollup;
select class_id,count(*) from my_student group by class_id;
select class_id,count(*) from my_student group by class_id with rollup;
select class_id,gender ,count(*) from my_student group by class_id , gender;
select class_id,gender ,count(*) from my_student group by class_id , gender with rollup;
--插入數據
insert into my_student values('0007','小花2',2,26,165,2);
insert into my_student values('0008','小花3',2,25,158,2);


--having 字句
--having是在group by字句之後,可以針對分組數據進行統計篩選, 但是where不行。
select class_id,count(*) as number from my_student where count(*) >=4 group by class_id; --會報錯
--ERROR 1111 (HY000): Invalid use of group function

--having 正確使用
select class_id,count(*) as number from my_student group by class_id having count(*) >=4 ;
select class_id,count(*) as number,group_concat(stu_name) from my_student group by class_id;

order by 字句
--order by 字段名 [asc|desc]
select * from my_student order by class_id desc;
select * from my_student order by class_id desc , stu_height asc;

limit 字句
select * from my_student limit 2;
select * from my_student limit 5;

分頁limit 分頁獲取數據  
--limit offset,length;
mysql中記錄數量由0開始。
select * from my_student limit 0,2;
select * from my_student limit 2,2;


