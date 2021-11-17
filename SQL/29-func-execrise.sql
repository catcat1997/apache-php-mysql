函數案例:
需求: 由1開始, 直到用戶傳入的對應的值為止 ,自動求和, 凡是5的倍數都不要。

mysql沒有++ 沒有+= 

delimiter $$
create function exec1(int_f int) returns int
begin
    declare result int default 0;
    declare i int default 1;
    mywhile:while i < int_f do
        if i = 5 then 
            set i = i + 1;
            iterate mywhile;
        end if;
        set result = result + i;
        set i = i + 1;
    end while mywhile;
    return result;
end
$$
delimiter ;

select exec1(4);
select exec1(5);
select exec1(6); -- 5的倍數不要