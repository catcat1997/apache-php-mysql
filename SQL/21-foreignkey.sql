增加外鍵  foreign key;
use mydatabase2;
--創建my_foreign表  references my_class(class_id)
create table my_foreign (
id int primary key auto_increment,
name varchar(10) not null,
--關聯班級 my_class
class_id int ,
--增加外鍵
foreign key(class_id) references my_class(class_id)
) charset = big5;

create table my_foreign (
id int primary key auto_increment,
name varchar(10) not null,
class_id int ,
foreign key(class_id) references my_class(class_id)
) charset = big5;

show create table my_foreign;

--修改my_student表, 將class_id改為外鍵字段 references my_class(class_id)
alter table my_student add constraint `student_class_ibfk_1` foreign key(class_id) references my_class(class_id);


修改 & 刪除外鍵
--alter table 從表 drop foreign key `外鍵名`;
alter table my_student drop foreign key `student_class_ibfk_1`;
show create table my_student;
刪除對應索引:
--alter table 表名 drop index 索引名字;
alter table my_student drop index `student_class_ibfk_1`;

--向從表my_foreign 插入數據
insert into my_foreign values (null,'小1',1); --正確
insert into my_foreign values (null,'小2',4); --不正確 主表沒有class_id = 4

--約束模式
district : 嚴格模式 , default; (不允許操作)
cascade : 級聯模式 一起操作(主表變化,從表數據跟著變)
set null: 置空模式(主表變化(刪除), 從表對應記錄設置為空: 前提是從表對應的外鍵字段允許為空)

--約束模式 on update cascade  on delete set null;
alter table my_student add foreign key(class_id) references my_class(class_id) 
on update cascade on delete set null;

--更新主表 on update cascade 
update my_class set class_id = 4 where class_id = 2;
update my_class set class_id = 2 where class_id = 4;
--更新主表 on delete set null;
delete from my_class where class_id = 4;
