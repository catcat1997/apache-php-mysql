<?php
    // php操作數據庫的基本連接操作 mysqli
    
    // 1.連接認證 $link = @mysqli_connect('localhost','root','123456');  @是不報錯符號 (php)
    $link = mysqli_connect('localhost','root','123456','mydatabase2',3306);
    
    // 2.設置字符集
    $sql = 'set names utf8';
    $res = mysqli_query($link , $sql); // 執行$sql語句
    // var_dump($res); //確認操作是否正常執行

    // 3.選擇數據庫
    $sql = 'use mydatabase2';
    $res = mysqli_query($link , $sql);
    // var_dump($res);

    // 以下開始 crud
    // 3.9 新增表
    // $sql = "create table php_crud (id int primary key auto_increment , name varchar(10) not null , gender enum('男','女','保密') not null , age int unsigned not null) charset = utf8";
    // $res = mysqli_query($link,$sql);

    // create table用utf8  客戶端用set names big5;

    // 4.新增數據
    // $sql = "insert into php_crud values(null,'小王',3,99)";
    // $res = mysqli_query($link , $sql);
    // var_dump($res);
    // echo mysqli_affected_rows($link);

    // 5.修改數據
    // $sql = "update php_crud set name ='老王' where name = '小王'";
    // $res = mysqli_query($link , $sql);
    // var_dump($res);

    // 6.刪除數據
    // $sql = "delete from php_crud where id = 2";
    // $res = mysqli_query($link , $sql);
    // var_dump($res);
    // echo mysqli_error($link); // 報錯信息 ($link的操作)

    // 7.查詢數據
    $sql = "select * from php_crud";
    $res1 = mysqli_query($link , $sql);
    $res2 = mysqli_query($link , $sql);
    $res3 = mysqli_query($link , $sql);
    $res4 = mysqli_query($link , $sql);
    $res5 = mysqli_query($link , $sql);
    $result1 = mysqli_fetch_row($res1);  // 索引數組, 一般不用
    $result2 = mysqli_fetch_all($res2); //   索引數組 , 返回所有數據
    $result3 = mysqli_fetch_assoc($res3); // 索引是 字段名
    echo '<pre>';
    var_dump($result1);
    echo '<hr>';
    var_dump($result2);
    echo '<hr>';
    var_dump($result3);
    echo '<hr>';
    // 查看結果集行數
    $nums = mysqli_num_rows($res4);
    echo $nums;
    
    // 編歷所有結果: 使用數組保存所有編歷得到的結果 (二維數組, 而且索引是字段名)
    // $lists = array();
    // for編歷$row 放數據到 $lists
    // for($i =0;$i<$nums;$i++){
    //     $row = mysqli_fetch_assoc($res5); 
    //     //mysqli_fetch_assoc和_row都是有指針, 用了一次會使原數組($res5)的指針指向下一個索引。
    //     $lists[] = $row;
    // }
    // var_dump($lists);
    echo '<hr>';
    // 實際開發使用的編歷
    $lists= array();
    while($row = mysqli_fetch_assoc($res5)){
        $lists[]  = $row;
    }
    var_dump($lists);
?>