-- 創建用戶
create user 'user1'@'%' identified by '123456';

查看用戶
select * from mysql.user\G
select host, user from mysql.user;

--簡化的創建用戶
create user user2;
--這個用戶沒有密碼, 不限定客戶端ip (不安全)。

刪除用戶
drop user 用戶名@host;
drop user 'user2';
drop user 'user2'@'%';
drop user user2;

修改用戶密碼
使用系統函數 password(),  mysql8.0不需要用password函數了
--語法
1.set password for 用戶名 = '新的明文密碼';
2.update mysql.user set password = password('新的明文密碼') where user = '用戶名' and host = ''; (慎用)

set password for 'user1'@'%' = '654321';

set password for 'root'@'localhost' = '123456';

分配權限 grant ... to
grant 權限列表 on 數據庫.表名 to 用戶
grant select on mydatabase2.* to 'user1'@'%';
--用user1 查看mydatabase2;
show databases;
--由於給了user1 select權限, 現在可以use mydatabase2;了

取消權限 / 權限回收 : revoke ... from
revoke 權限列表 on 數據庫.表名 from 用戶
revoke select on mydatabase2.* from 'user1'@'%';

刷新權限 flush
flush privileges;