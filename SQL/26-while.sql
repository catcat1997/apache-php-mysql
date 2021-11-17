while循環
mysql的循環體都是在大型代碼塊中使用
語法:
while 條件 do 
	循環執行代碼
end while;

結構標識符
為某些特定的結構進行命名, 為的是在某些地方使用這名字。

語法:
標識名字: while條件 do 
	循環執行代碼
end while[標識名字];

while結構標識符 主要是為了循環體中使用循環控制。

mysql中,沒有break 沒有continue; 但有自己的關鍵字替代。

iterate: 疊代,	就是 continue;(以下代碼不執行, 重新開始循環)
leave : 就是break; (整個循環中止)

標識名字: while條件 do 
	if 條件判斷 then
		循環控制;
		iterate / leave 標識名字;
	end if;
	循環體
end while[標識名字];

