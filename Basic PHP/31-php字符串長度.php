<?php
    $str1 = 'abcdefg';
    $str2 = '你好朋友';
    echo strlen($str1), '<br>', strlen($str2), '<br>';
    echo '<hr>';
    // 使用mbstring擴展
    echo mb_strlen($str1), '<br>', mb_strlen($str2), '<br>' , mb_strlen($str2,'utf-8'), '<br>' ;
?>