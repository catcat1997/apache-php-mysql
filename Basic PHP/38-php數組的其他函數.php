<?php
    $arr = [0,1,2,3,4];
    array_push($arr,5);
    var_dump($arr);
    echo '<hr>';
    array_pop($arr);
    var_dump($arr);
    echo '<hr>';
    array_shift($arr);
    var_dump($arr);
    echo '<hr>';
    array_unshift($arr,10);
    var_dump($arr);
    echo '<hr>';
    var_dump(array_reverse($arr));
    echo '<hr>';
    var_dump(in_array(10,$arr));
    var_dump(in_array(101,$arr));
    echo '<hr>';
    var_dump(array_keys($arr));
    echo '<hr>';
    var_dump(array_values($arr));
    echo '<hr>';
?>