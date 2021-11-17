<?php
    $str1 = 'abc\r\ndef\t\'\"\$fg';
    $str2 = "abc\r\ndef\t\'\"\$fg";
    echo $str1 , '<br>' , $str2, '<br>';
    // 雙引號能夠在字符串中識別 變量
    $a = 100;
    $str3 = "abc $a def";
    echo $str3, '<br>';
    $b = 500;
    $str4 = "abc{$b}def";
    echo $str4, '<br>';
?>