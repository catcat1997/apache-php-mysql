--常見的系統函數(內置函數)
字符串函數
char_length()
length()
concat()
instr()
lcase()
left()
ltrim()
mid()

select char_length('你好朋友') , length('你好朋友');
select char_length('hello mysql') , length('hello mysql');

select concat('你好','ggvv') , instr('你好朋友','好') , instr ('hello', 'g');
-- mysql 索引由 1 開始;

select lcase('ABcd'), left('hello myfriend',7);
select ltrim('  a  b  c  ') , mid('hello mysql', 3);

時間函數
now()
curdate()
curtime()
datediff(): 參數日期需要字符串格式  返回a-b日數
date_add(日期,interval時間數字type): 進行時間的增加
type: day/hour/minute/second

select now() , curdate() , curtime();
select datediff('2020-11-02','2021-11-02'); -- -365
select date_add('2020-11-02',interval 10 day);
select date_add('2020-11-02',interval 10 year);
select date_add('2020-11-02',interval 10 second);
select unix_timestamp();
select from_unixtime(123456); 
select from_unixtime(unix_timestamp()) , curdate() , curtime(); 

數學函數
abs()
ceiling()
floor()
pow()
rand()
round()

select abs(20), abs(-20) , ceiling(1.4) , floor(1.8);
select pow(2,4);
select rand();
select round(1.45);
select round(1.5);

其他函數
md5(); 對數據進行md5加密
version();當前mysql version
database(); 顯示當前數據庫
uuid(); 生成一個唯一標識符(自增長): 自增長是單表唯一, UUID是整庫(數據唯一同時空間唯一)

select md5('abc');
select version();
select database();
select uuid();