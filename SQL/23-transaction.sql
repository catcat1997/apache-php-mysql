use mydatabase2;
--自動事務
show variables like 'autocommit%';
set autocommit = Off;

commit;  --提交事務
rollback; --清空事務

--手動事務

--開啟事務
start transaction;
--執行事務
select * from my_student;
select * from my_class;
insert into my_class values(6,'F班');

update my_student set class_id = 6 where stu_id = '0007';

--提交事務
commit;

--滾回事務 rollback
start transaction;
insert into my_class values(7,'G班');
select * from my_class;
rollback;

--回滾點 savepoint
select * from my_class;
start transaction;
insert into my_class values(100,'ZZ班');
savepoint sp1;
insert into my_class values(200,'ZZZ班');
rollback to sp1;
commit;

