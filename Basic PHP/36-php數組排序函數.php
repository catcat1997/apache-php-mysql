<?php
    $arr = [1,5,3,7,15,13,11,9];
    $arr1  = $arr;
    $arr2  = $arr;
    $arr3  = $arr;
    $arr4  = $arr;

    echo '<hr>';
    echo '原數組: </br>';
    foreach($arr4 as $k => $v){
        echo 'key= ', $k , " value = " , $v ,'<br>';
    };

    echo '<hr>';
    sort($arr);
    echo 'sort(): </br>';
    foreach($arr as $k => $v){
        echo 'key= ', $k , " value = " , $v ,'<br>';
    };

    echo '<hr>';
    asort($arr1);
    echo 'asort(): </br>';
    foreach($arr1 as $k => $v){
        echo 'key= ', $k , " value = " , $v ,'<br>';
    };

    echo '<hr>';
    ksort($arr2);
    echo 'ksort(): </br>';
    foreach($arr2 as $k => $v){
        echo 'key= ', $k , " value = " , $v ,'<br>';
    };
    
    echo '<hr>';
    shuffle($arr3);
    echo 'shuffle(): </br>';
    foreach($arr3 as $k => $v){
        echo 'key= ', $k , " value = " , $v ,'<br>';
    };
    
?>