<?php
    function fn1(){
        // 變量
        $n = 1;
        // 靜態變量
        static $a = 1;
        $a++;
        echo $n , " " , $a , '</br>';
    }
    fn1();
    fn1();
    fn1();
    
?>