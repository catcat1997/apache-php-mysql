<?php
    // 變量var

    // 定義變量: php不需要任何關鍵字 $定義變量(賦值) 也就是不用分 數據類型 (如同js 直接let var)

    $var1; //定義
    $var2 = 1; //定義同時賦值

    // echo $var1;  undefined 不能輸出
    echo $var2;
    
    $var2 = 3;
    echo $var2;

    // 刪除變量 unset(xx);
    unset($var2);
    // echo $var2;

    // 變量命名
    $var1;  //可以
    $_var1; //可以
    //$1var; //不可以

?>