<?php
    // 引用傳參
    $a = 1;
    $b = 2;
    function gg($one,&$two){
        $one +=1;
        $two +=1;
        echo $one , " ", $two , '</br>';
    }
    gg($a,$b);
    echo $a , " ", $b;

?>