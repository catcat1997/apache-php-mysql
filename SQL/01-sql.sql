--數據庫操作

-- 創建數據庫
create database mydatabase;

create database mydatabase2 charset gbk;

--顯示全部數據庫
show databases;

--顯示部分數據庫
-- 查看以my開頭的數據庫
show databases like 'my%';
show databases like 'm_data%e';
show databases like 'm_data%e%';

--顯示數據庫創建語句(查詢數據庫的字符集)
show create database mydatabase2;

--選擇數據庫語句
use mydatabase;

--修改數據庫的字符集
alter database mydatabase2 charset [=] utf8;

--刪除數據庫
drop database mydatabse3;
