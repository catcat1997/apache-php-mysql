<?php
    $g = 'global';
    $g2 = 'hello';
    function fun($g){
        echo $g , '</br>';
        echo $GLOBALS['g2'] , '</br>'; // $g2
    }
    fun($g);

    // php有一個超全局變量$GLOBALS 是一個數組,會放一些全局變量,
    // 我們可以用超全局變量$GLOBALS獲取全局變量。

    echo var_dump($GLOBALS);
    
?>