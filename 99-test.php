<?php

    $str = 'myname.php';
    $strstr_true =  strstr($str , '.', true);
    $strstr_false = strstr($str , '.', false);
    $strrchr = strrchr($str , '.');
    var_dump($strstr_true);
    var_dump($strstr_false);
    var_dump($strrchr);


    echo '<hr>';
    $a = 'error';
    $f = @fopen('20-被下載.txt','r') or die();
    $res = fread($f,999);
    var_dump($res);
    fclose($f);
?>