<?php

    $a = "1.1";
    $b = 1.1;
    $c = 3;
    $d = true;

    // 判斷類型 true/false
    echo var_dump(is_string($a)) , '</br>';
    echo  var_dump(is_double($b)) , '</br>';
    echo  var_dump(is_float($b)) , '</br>';
    echo  var_dump(is_int($c)) , '</br>';
    // 判斷類型
    echo gettype($a), '</br>';
    echo gettype($b), '</br>';
    echo gettype($c), '</br>';
    echo gettype($d), '</br>';
    // 設置類型 settype
    echo '</br>';
    echo 'settype($b, "int"): ', '</br>';
    settype($b, 'int');
    echo gettype($b), '</br>';

    // var_dump使用
    echo 'var_dump的使用' , '</br>';
    echo var_dump($a) , '</br>';
    echo var_dump($b) , '</br>';
    echo var_dump($c) , '</br>';
    echo var_dump($d) , '</br>';

?>