<?php
    function fn1(){
        echo __FUNCTION__;
    }
    $func = 'fn1';
    // 可變函數調用
    $func();
    // 可變函數使用場景
    echo '<hr>';
    // 定義一個系統函數(假設)  這個使用場景如同js的callback
    function sys_function($arg1,$arg2){
        // 給指定的函數($arg1),求對應的第二個參數值的4次方
        // 可變函數使用
        return $arg1($arg2);
    }
    // 定義一個用戶函數: 計算4次方
    function user_function($num){
        return $num * $num *$num * $num;
    }

    $result = sys_function('user_function',2);
    echo $result;

?>