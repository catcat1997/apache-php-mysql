需求: 有兩張表 , 一張是商品表 , 一張是訂單表(保留商品ID) , 每次訂單生成 , 商品中對應的庫存就應該發生變化。

--創建2張表
create table my_goods(
    id int primary key auto_increment,
    name varchar(20) not null,
    inv int
) charset big5;

create table my_orders(
    id int primary key auto_increment,
    goods_id int not null,
    goods_num int not null
) charset big5;

insert into my_goods values (null,'手機',1000),(null,'電腦',500),(null,'遊戲機',100);

-- 創建觸發器 (訂單數據庫發生插入, 對應的商品就應該減少庫存)
delimiter $$
create trigger after_insert_order_t after insert on my_orders for each row
begin
    update my_goods set inv = inv - 1 where id =1;
end
$$
delimiter ;


查看觸發器
show triggers;
show create trigger after_insert_order_t;

觸發觸發器
insert into my_orders values (null,1,1);

刪除觸發器
drop trigger觸發器名字;
drop trigger after_insert_order_t;

--記錄關鍵字 new old
(old/new).字段名
insert: 插入前為空, 沒有old
delete: 清空後為空, 沒有new
update: old new 都有。

--重寫自動扣除商品庫存的觸發器
delimiter $$
create trigger after_insert_order_t after insert on my_orders for each row
begin
    update my_goods set inv = inv - new.goods_num where id = new.goods_id;
end
$$
delimiter ;

--觸發觸發器
insert into my_orders values (null,1,5);
insert into my_orders values (null,2,10);
insert into my_orders values (null,3,3);

select * from my_orders;
select * from my_goods;

-- 判斷庫存
delimiter $$
create trigger before_insert_order_t before insert on my_orders for each row
begin
   select inv from my_goods where id = new.goods_id into @inv;
   if @inv < new.goods_num then
        --主動出錯, 觸發器出錯就會取消操作
        insert into xxx values('xxx');
   end if;
end
$$
delimiter ;

--觸發觸發器  判斷庫存
insert into my_orders values (null,3,1000);

