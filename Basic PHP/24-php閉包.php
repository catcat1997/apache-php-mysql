<?php

    function fn1(){
        $name = __FUNCTION__;
        $fn2 = function() use($name){
            echo $name;
        };
        $fn2();
    };
    echo var_dump(fn1());
    echo '</br>';
    fn1();

    // 如果結果是return一個匿名函數(變量接收匿名函數), 輸出結果就要用另外一個變量去接收匿名函數
    echo '<hr>';
    function fn1a(){
        $name = __FUNCTION__;
        $fn2a = function() use($name){
            echo $name;
        };
        return $fn2a;  // return $fn2a(); 有加括號是調用, 沒加括號是函數本身
    };
    echo var_dump(fn1a()); // fn1是個閉包
    echo '</br>';
    // fn1a();  //沒有輸出echo $name;  要用另外一個變量去接收匿名函數(因為return時沒有加括號, 不調用)
    $closure = fn1a();
    $closure();
?>