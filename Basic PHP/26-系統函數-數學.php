<?php
    // 函數相關的函數
    function test($a,$b){
        //獲取指定參數
        var_dump(func_get_arg(1));
        //獲取所有參數
        var_dump(func_get_args());
        //獲取參數數量
        var_dump(func_num_args());
    };

    // 調用函數 ( && 邏輯運算, 有左面就執行右面, 沒有左面就不執行)
    function_exists('test') && test(1,'2str',3,4);
    // 會返回
    // string(4) "2str"      
    //  (func_get_arg(1))  索引1的參數

    // array(4) { [0]=> int(1) [1]=> string(4) "2str" [2]=> int(3) [3]=> int(4) }  
    //  (func_get_args()) 數組形式返回全部參數

    // int(4)  
    //  (func_num_args())   參數數量


    // 數學函數
    echo '<hr>';
    echo max(5.5,7);
    echo '<hr>';
    echo round(5.5);
    echo '<hr>';
    echo rand(1,10);
    echo '<hr>';
    echo mt_rand(1,10);
    echo '<hr>';
    echo pow(2,4);
    echo '<hr>';
    echo sqrt(16);

?>  