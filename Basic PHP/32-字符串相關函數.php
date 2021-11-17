<?php
    // 1.轉換函數
    // implode()
    $arr1 = ['你好','剃花','小明'];
    $str1 = implode(',',$arr1);
    echo $str1 , '<hr>';
    // explode()
    $str2 = '澳門|香港|澳地區|花城';
    $arr2 = explode("|" , $str2);
    var_dump($arr2);
    echo '<hr>';
    // str_split()
    $str3 = '我的名字是kira yoshikage';
    $arr3 = str_split($str3);
    $arr4 = str_split($str3, 8);
    $arr5 = mb_str_split($str3);
    $arr6 = mb_str_split($str3, 8);
    echo '<hr>';
    print_r($arr3);
    echo '<hr>';
    print_r($arr4);
    echo '<hr>';
    print_r($arr5);
    echo '<hr>';
    print_r($arr6);
?>