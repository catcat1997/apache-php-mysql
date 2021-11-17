<?php

    
    $a = 'outside ' . ' </br>';
    function fn1(){
        global $b;
        $b = 'inner ' . ' </br>';
        global $a;
        echo $a;
    }
    fn1();
    
    echo $b;

?>