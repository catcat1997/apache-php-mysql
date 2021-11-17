-- 利用mysqldump進行sql備份

--整庫備份
mysqldump.exe -hlocalhost -P3306 -uroot -proot mydatabase2 > "C:/ProgramData/MySQL/MySQL Server 8.0/Data/temp/mydatabase2.sql"
--多表備份
mysqldump.exe -uroot -proot mydatabase2 my_student my_int > "C:/ProgramData/MySQL/MySQL Server 8.0/Data/temp/student_int.sql"

--還原數據
mysql.exe -uroot -proot mydatabase2 < "C:/ProgramData/MySQL/MySQL Server 8.0/Data/temp/mydatabase2.sql"

source C:/ProgramData/MySQL/MySQL Server 8.0/Data/temp/mydatabase2.sql;
drop table my_int , my_student;
source C:/ProgramData/MySQL/MySQL Server 8.0/Data/temp/student_int.sql;

