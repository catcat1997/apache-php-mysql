select * from my_student;
select * from my_student where stu_age >= 20;
--if
1.用在select查詢中, 當做一種條件來進行判斷
--select * , if(條件 , 為真結果 , 為假結果) as (if結果字段名) from 數據源;
select * , if(stu_age >=20 ,'符合' , '不符合') as test from my_student;


2.	用在複雜語句塊中(函數/存儲過程/觸發器)
--if 條件表達式 
--then
--滿足條件時執行的語句 
--end if;

3.複合語法  (沒有else if 但可以嵌套if)
--if 條件表達式 
--then滿足條件時執行的語句
--else 不滿足條件時執行的語句
--end if;
